// Puller is an external JS library that we don't control, you shouldn't need
// to edit this code at all.
(() => {
  const eventType = "puller:message"
  var messageInterval, listener;

  document.addEventListener("turbo:load", (event) => {
    if (event.detail.url.match(/eventful/)) {
      if (!listener) {
        listener = document.addEventListener(eventType, logMessage)
      }

      if (!messageInterval) {
        messageInterval = startMessages()
      }
    } else {
      if (messageInterval) {
        clearInterval(messageInterval)
        messageInterval = undefined
      }
    }
  })

  function logMessage(event) {
    console.info("Puller:", event.detail.message)
  }

  function startMessages() {
    return setInterval(() => {
      const message = "Incoming message at " + Date.now()

      const event = new CustomEvent(eventType, {
        detail: { message }
      })

      document.dispatchEvent(event)
    }, 3000)
  }
})()
