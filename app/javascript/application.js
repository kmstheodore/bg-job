// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"



function checkTime() {
  const now = new Date();
  const currentTime = now.toTimeString().slice(0, 5); // Get the current time in HH:mm format

  // Get all divs with the class 'time'
  const timeDivs = document.querySelectorAll('.incomplete-card h1');
  timeDivs.forEach(h1 => {
      if (h1.textContent.trim() === currentTime) {
          alert(`It's ${currentTime}!`);
      }
  });
}

// Check the time immediately on load
checkTime();

// Set interval to check every 5 seconds
setInterval(checkTime, 5000);
