# Linux System Administration & Shell Scripting Repository

![License](https://img.shields.io/badge/license-%20%20GNU%20GPLv3%20-green?style=plastic)
![Shell Script](https://img.shields.io/badge/Shell-Bash-blue?style=plastic)
![Linux](https://img.shields.io/badge/Platform-Linux-red?style=plastic)
![Updated](https://img.shields.io/badge/Updated-2025-brightgreen?style=plastic)

## Overview

A comprehensive **Linux System Administration** repository demonstrating advanced shell scripting, system automation, security administration, and DevOps fundamentals. This collection showcases practical, production-ready scripts and administration techniques used in enterprise Linux environments.

**Perfect for:** System administrators, DevOps engineers, SRE engineers, and IT professionals managing Linux infrastructure at scale.

---

## 📚 Repository Structure

```
Linux-System-Administration/
├── Basic-Shell-Scripts/          # Foundation & Advanced Shell Scripting
│   ├── Data/                     # Sample data files for script testing
│   ├── Arrays, Functions, Loops  # Core shell programming concepts
│   ├── Text Processing           # AWK, SED, CUT, TR utilities
│   ├── File & Directory Ops      # File management & traversal
│   ├── System Administration     # User management, service management
│   └── Automation & Monitoring   # Progress bars, logging, health checks
│
├── Linux-Demos/                  # Real-World Administration Scenarios
│   ├── File Permissions          # chmod, chown, special permissions
│   ├── User Management           # Creating users, groups, password policies
│   ├── Security Operations       # SSH, encryption, secure file transfer
│   ├── System Performance        # CPU, memory, disk monitoring
│   ├── Networking Operations     # FTP server, SSH setup, connectivity
│   └── File Management           # Compression, backup, archive operations
│
└── README.md                      # This file
```

---

## 🚀 Key Features

### **Shell Scripting Mastery**
- ✅ **Advanced Bash Programming:** Functions, arrays, loops, conditionals
- ✅ **Text Processing:** AWK, SED, grep, cut, tr for data manipulation
- ✅ **String Operations:** Parsing, validation, formatting
- ✅ **Error Handling:** Try-catch patterns, custom exceptions
- ✅ **Input/Output:** User prompts, file redirection, piping

### **System Administration**
- ✅ **Service Management:** Checking status, restarting services
- ✅ **Package Management:** APT-based package installation & updates
- ✅ **Permission Management:** File permissions, special bits (SUID, SGID, sticky)
- ✅ **System Monitoring:** Performance checks, port monitoring, disk usage

### **Security & Networking**
- ✅ **SSH Configuration:** Key-based authentication, remote access
- ✅ **Encryption:** Symmetric encryption (AES), secure file transfer
- ✅ **FTP Server Setup:** Installation, configuration, user management
- ✅ **Cybersecurity Basics:** Network scanning, vulnerability assessment
- ✅ **Access Control:** File permissions, user roles, security policies

### **Practical Automation**
- ✅ **Backup Scripts:** Automated file compression & archiving
- ✅ **Service Monitoring:** Health checks, auto-restart capabilities
- ✅ **Log Management:** Log analysis, sorting, filtering
- ✅ **VMware Integration:** VMware Tools installation & management

---

## 📖 Quick Start

### **1. Clone the Repository**
```bash
git clone https://github.com/Rohan-Repo/Linux-System-Administration-Tasks.git
cd Linux
```

### **2. Explore Basic Scripts**
```bash
# Navigate to shell scripts
cd Basic-Shell-Scripts

# Run a simple example
bash ArrayEg-1.sh                    # Array operations
bash StringOperations.sh              # String manipulation
bash FunctionEg.sh                    # Function definition & usage
```

### **3. Try Administration Demos**
```bash
# Navigate to demos
cd ../Linux-Demos

# View system performance
cat Check-System-Performance.txt      # Performance monitoring commands

# User creation examples
cat Create-User-Linux.txt             # User administration

# Security operations
cat CyberSecurity-Commands-Demo.txt   # Security administration
```

### **4. Examine Data Files**
```bash
cd ../Basic-Shell-Scripts/Data
cat TVShowActors.csv                  # Sample CSV for parsing
cat Cities.txt                        # Sample text for text processing
```

---

## 💡 Usage Examples

### **Text Processing with AWK**
```bash
# Parse CSV and extract specific columns
bash AWK_eg-1.sh                      # Column extraction
bash AWK_eg-2.sh                      # Aggregation & filtering
```

### **File System Operations**
```bash
# Check if directory/file exists
bash checkIfDirectoryExists.sh

# Find and process files
bash Findeg.sh                        # File searching patterns

# Sort files by size
bash sortLogFileBySize.sh             # Large file identification
```

### **Service Management**
```bash
# Check service status
bash CheckServiceStatus.sh

# Monitor open ports
bash CheckOpenPortsOnServer.sh
```
---

## 🎓 Learning Outcomes

After exploring this repository, you'll understand:

| Topic | Skills Gained |
|-------|---|
| **Shell Scripting** | Bash programming, advanced script design, error handling |
| **System Admin** | User management, service control, permission management |
| **Text Processing** | AWK, SED, grep, data parsing & transformation |
| **Automation** | Backup scripts, monitoring, scheduled tasks |
| **Security** | SSH, encryption, secure file transfer, access control |
| **Networking** | FTP setup, port management, connectivity |
| **DevOps Basics** | Automation scripting, infrastructure management |

---

## 📊 Scripts Overview

| Category | Count | Use Case |
|----------|-------|----------|
| **Basic Programming** | 12+ | Variables, loops, conditionals, functions |
| **Text Processing** | 8+ | AWK, SED, data extraction & transformation |
| **System Administration** | 10+ | Users, services, packages, permissions |
| **Monitoring & Logs** | 5+ | Performance, ports, service health |
| **Networking** | 5+ | SSH, FTP, encryption, secure transfer |
| **File Management** | 8+ | Compression, backup, archiving |

---

## 🔒 Security Considerations

This repository includes security-focused demonstrations. When using these scripts in production:

- ⚠️ **Review permissions carefully** - Always validate user access levels
- ⚠️ **Validate inputs** - Check user/CSV inputs before processing
- ⚠️ **Use encryption** - Implement TLS for remote access
- ⚠️ **Monitor logs** - Track all administrative changes
- ⚠️ **Test thoroughly** - Validate in non-production first

---

## 🛠️ Technologies Used

- **Shell/Bash** - Primary scripting language
- **AWK/SED/Grep** - Text processing utilities
- **Linux/Ubuntu** - Operating system
- **SSH/SCP** - Remote access & file transfer
- **FTP** - File transfer protocol

---

## 📋 Advanced Topics Covered

- ✅ Special Permissions (SUID, SGID, Sticky Bit)
- ✅ File Encryption (Symmetric AES)
- ✅ Distributed Access Control (AD integration)
- ✅ Log Management & Analysis
- ✅ Performance Tuning
- ✅ Service Orchestration
- ✅ Backup & Recovery

---


## 📝 License

This project is licensed under the **GNU Public v3 License** - see LICENSE file for details.

---

## 🎯 Next Steps

**Want to advance your Linux administration skills?**

1. **Master these scripts** - Understand each component
2. **Modify & customize** - Adapt to your environment
3. **Build production scripts** - Create your own automation
4. **Contribute improvements** - Share with the community
5. **Pursue DevOps roles** - Use these skills for infrastructure engineering

---

## 📞 Connect & Support

**Have questions or need help?**
- 🔗 GitHub: [@Rohan-Repo](https://github.com/Rohan-Repo)
- 💼 Looking for collaboration on infrastructure projects

---

## 🌟 Repository Stats

- **Last Updated:** December 2025
- **Scripts:** 50+
- **Demonstrations:** 10+
- **Total Lines of Code:** 1,000+
- **Categories:** 6 major areas
- **Skill Level:** Intermediate to Advanced

---

**⭐ If you find this repository helpful, please star it! It helps other professionals discover these resources.**

---

## 🔗 Related Repositories

- **Windows System Administration** - PowerShell, Active Directory, Group Policy
[Windows-System-Administration](https://github.com/Rohan-Repo/Windows-System-Admin-Tasks)
- **Backend Development** - Spring Boot, Microservices, Cloud-Native Applications
[SpringBoot-Codebase](https://github.com/Rohan-Repo/Spring-Boot-Codebase)
- **Database Management** - Advanced SQL, MongoDB : 
[SQL-Codebase](https://github.com/Rohan-Repo/SQL-Codebase)
[MongoDB-Codebase](https://github.com/Rohan-Repo/MongoDB-Crash-Course)
- **Python Beginner to Intermediate** - Python Core, Data Analysis, Web Development
[Python-Codebase](https://github.com/Rohan-Repo/Python-Codebase/)
- **Java Beginner to Intermediate** - Core Java Fundamentals 
[Java-Codebase](https://github.com/Rohan-Repo/Java-Codebase)

---

**Built with ❤️ for the Linux community. Happy scripting!**

