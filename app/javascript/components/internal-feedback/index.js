/* eslint-disable import/exports-last */
export default function InternalFeedback() {
  return (
    <div>
      <a
        href="https://feedback.userreport.com/f162f4ea-3cff-446a-94a2-426170cca525/"
        target="_blank"
      >
        <h1
          style={{
            paddingLeft: "20px"
          }}
        >
          Feedback
        </h1>
      </a>
      <iframe
        title="internal-feedback"
        src="https://feedback.userreport.com/f162f4ea-3cff-446a-94a2-426170cca525/"
        width="100%"
        height="1000px"
      />
    </div>
  );
}

InternalFeedback.displayName = "InternalFeedback";
