import { useState } from 'react';
import ReactDiffViewer from 'react-diff-viewer';

export default function DiffView({ oldValue, newValue }: { oldValue: string, newValue: string }) {
  const [showUnifiedView, setShowUnifiedView] = useState<boolean>(false);
  const [showDiffOnly, setShowDiffOnly] = useState<boolean>(false);

  return <>
    <div className="flex items-center gap-4 py-2">
      <label className="flex gap-2 items-center">
        <input type="checkbox" checked={showUnifiedView} onChange={event => setShowUnifiedView(event.target.checked)} />
        Show unified diff
      </label>
      <label className="flex gap-2 items-center">
        <input type="checkbox" checked={showDiffOnly} onChange={event => setShowDiffOnly(event.target.checked)} />
        Show diff only
      </label>
    </div>
    <ReactDiffViewer
      oldValue={oldValue}
      newValue={newValue}
      splitView={!showUnifiedView}
      showDiffOnly={showDiffOnly}
    />
  </>;
}
