import ReactDiffViewer from 'react-diff-viewer';

export default function DiffView({ oldValue, newValue }: { oldValue: string, newValue: string }) {
  return <ReactDiffViewer oldValue={oldValue} newValue={newValue} splitView={true} showDiffOnly={false} />
}
