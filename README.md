# Terminal-Rick-Roll

This project is a lightweight prank kit designed to display ASCII-art "gif's" on a "victim's" machine every x time period. It uses native Windows tools to create background tasks and ensure the prank stays hidden.

---

## 📂 File Overview

| File | Purpose | Trolling Level |
| --- | --- | --- |
| **`rick.bat`** | The "Engine." Spawns the ASCII art (Dancing Parrot or Rick Roll) every 5 minutes. | **Mild:** Visible terminal; easily closed manually. |
| **`rickroll_hidden.vbs`** | The "Silencer." Executes the rick.bat without a visible command prompt to close. | **Moderate:** Stealthy; only stoppable via Task Manager, reboot or `StopRick.bat`. |
| **`Init.bat`** | The "Persistence." Sets a Windows Scheduled Task to run rickroll_hidden.vbs at startup. | **Max:** Survives restarts; requires Admin access to delete (use `StopRick.bat` to remove). |
| **`StopRick.bat`** | The "Killswitch." Forcefully deletes the scheduled task and stops background scripts. | **N/A:** The cleanup tool. |

---

## 🚀 How to Use

1. **Preparation**  
   Keep all files in the same folder so the relative paths function correctly.
   Tip: Hide the folder in a place they won't look for...

3. **Deployment**
   - For a **quick prank**, run `rickroll_hidden.vbs`. The victim won't see anything until the first terminal pops up every 5 minutes.
   - For **long-term trolling**, open `Init.bat` and click accept. This "arms" the system to trigger every time they log in.

4. **The Payload**  
   Every 5 minutes, `rick.bat` will randomly select and open a new terminal window displaying a looping ASCII animation.

---

## 🛡️ How to Stop the Prank

If the prank has been "installed" via `Init.bat` or `rickroll_hidden.vbs`, closing the pop-up ASCII windows won't stop them from coming back.

1. Right-click **`StopRick.bat`** and **Run as Administrator**.
2. This script executes:
   - `schtasks /delete /tn "LOL" /f` (Removes the startup trigger).
   - `taskkill /f /im wscript.exe` (Kills the hidden background tasks).

---

## ⚠️ Disclaimer

This is a prank tool intended for use between friends. Always ensure you have permission to run scripts on a device. Avoid deploying this in professional or school environments where background tasks might interfere with important work.
