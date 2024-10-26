import axios from "axios";

import { createInertiaApp } from "@inertiajs/react";
import { createRoot } from "react-dom/client";
import { createIcons, icons } from 'lucide';

createIcons({ icons });

axios.defaults.xsrfHeaderName = "x-csrf-token";

window.document.title = "diff thing"

createInertiaApp({
  resolve: async (name: string) => {
    return await import(`./pages/${name}.tsx`);
  },
  setup({ App, el, props }) {
    createRoot(el).render(<App {...props} />);
  },
});
