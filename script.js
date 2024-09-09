const apiKey = 'dacb71f8eb8b6e190633bd7a6b3a9b9d';  // Your API key
const city = 'Rajkot';  // Replace with your city name
const apiUrl = `https://api.openweathermap.org/data/2.5/weather?q=${city}&units=metric&appid=${apiKey}`;

function updateTime() 
{
    const now = new Date();
    
    // Time with AM/PM
    let hours = now.getHours();
    const minutes = String(now.getMinutes()).padStart(2, '0');
    const seconds = String(now.getSeconds()).padStart(2, '0');
    const ampm = hours >= 12 ? 'PM' : 'AM';
    hours = hours % 12;
    hours = hours ? hours : 12;  // If the hour is 0, set it to 12 (midnight)
    document.getElementById('clock').textContent = `${hours}:${minutes}:${seconds} ${ampm}`;
    
    // Date
    const year = now.getFullYear();
    const month = String(now.getMonth() + 1).padStart(2, '0');
    const day = String(now.getDate()).padStart(2, '0');
    document.getElementById('date').textContent = `${day}-${month}-${year}`;
    
    // Weekday
    const weekdays = ['sunday', 'monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday'];
    const currentDay = weekdays[now.getDay()];
    document.getElementById(currentDay).checked = true;
}

function updateTemperature() 
{
    fetch(apiUrl)
        .then(response => response.json())
        .then(data => {
            const temp = data.main.temp;
            document.getElementById('temperature').textContent = `Temp: ${temp}°C`;
        })
        .catch(error => {
            console.error('Error fetching the temperature:', error);
            document.getElementById('temperature').textContent = 'Temp: N/A';
        });
}

// Update time every second
setInterval(updateTime, 1000);
updateTime();  // Initial call to set values immediately

// Update temperature every 10 minutes
setInterval(updateTemperature, 600000);
updateTemperature();  // Initial call to set values immediately
