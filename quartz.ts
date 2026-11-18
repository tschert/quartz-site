import { loadQuartzConfig, loadQuartzLayout } from "./quartz/plugins/loader/config-loader"
import { componentRegistry } from "./quartz/components/registry"

// Menü links wie auf der bisherigen Obsidian-Publish-Seite.
// Die Funktionen laufen im Browser und müssen daher in sich geschlossen sein.
const explorerOptions = {
  filterFn: (node) => {
    const hidden = ["tags", "_assets", "_pdfs-and-docs", "presentations", "bio", "mai_projects"]
    return !hidden.includes(node.slugSegment.toLowerCase())
  },
  // Dateinamen statt Frontmatter-Titel anzeigen (wie Obsidian Publish)
  mapFn: (node) => {
    // Startseite als ersten Menüpunkt „Home“ einfügen (Quartz zeigt sie sonst nicht)
    if (node.slugSegments.length === 0 && !node.children.some((c) => c.slugSegment === "home")) {
      node.makeChild(["home"], { slug: "", title: "Home", filePath: "Home.md" })
    }
    if (node.isFolder) {
      if (node.fileSegmentHint) node.displayName = node.fileSegmentHint
    } else if (node.data && node.data.filePath) {
      node.displayName = node.data.filePath.split("/").pop().replace(/\.md$/, "")
    }
  },
  sortFn: (a, b) => {
    const order = [
      "home",
      "bio-in-english",
      "biografie-(dt.)",
      "projekte",
      "publikationen",
      "realitylab-projekte",
      "forschungsnetzwerk",
      "kontakt",
      "medienkulturenwirklichkeiten",
    ]
    const ia = order.indexOf(a.slugSegment.toLowerCase())
    const ib = order.indexOf(b.slugSegment.toLowerCase())
    if (ia !== -1 || ib !== -1) {
      return (ia === -1 ? 999 : ia) - (ib === -1 ? 999 : ib)
    }
    return a.displayName.localeCompare(b.displayName, "de", { numeric: true, sensitivity: "base" })
  },
}
// Der Plugin-Name wird je nach Ladeweg kurz oder mit Scope nachgeschlagen
componentRegistry.setOptionOverrides("explorer", explorerOptions)
componentRegistry.setOptionOverrides("@quartz-community/explorer", explorerOptions)

const config = await loadQuartzConfig()
export default config
export const layout = await loadQuartzLayout()
