# LWC Generic Lookup

A reusable **Lightning Web Component (LWC)** that provides a **generic lookup field for any Salesforce object**.
This component is designed to save development effort by offering a configurable, dynamic, and lightweight lookup solution that works across multiple objects.

---

## Features

* **Reusable across all objects** – works with standard and custom objects.
* **Dynamic configuration** via component attributes:

  * `object-api-name` → API name of the object (`Account`, `Contact`, `Product2`, etc.).
  * `fields` → Comma-separated list of fields to query.
  * `conditions` → Additional SOQL conditions for filtering results.
  * `icon-name` → Salesforce Lightning icon to display.
* **Efficient record fetching** using cacheable Apex methods.
* **Record selection event** (`onrecordselection`) for parent component handling.

---

## Usage

Example usage in a Lightning Web Component:

```html
<c-lookup 
    name="Product Lookup" 
    object-api-name="Product2"
    icon-name="standard:product" 
    onrecordselection={onRecordSelection} 
    fields="Id, Name"
    conditions="AND IsActive = true">
</c-lookup>
```

<p align="center">
<img width="665" height="268" alt="image" src="https://github.com/user-attachments/assets/92a9ecc5-1034-4da2-b29b-c0c660cc62fa" />
</p>

---

## Project Structure

```plaintext
.
├── classes
│   ├── lookupController.cls             # Apex controller for record search
│   └── lookupController.cls-meta.xml    # Metadata configuration for Apex class
│
├── lwc
│   └── lookup
│       ├── lookup.html                  # LWC template (markup)
│       ├── lookup.js                    # LWC logic (JS controller)
│       └── lookup.js-meta.xml           # Metadata configuration for LWC
│
├── LICENSE                              # License file (MIT)
└── README.md                            # Project documentation
```
---

## Installation

1. Clone this repository into your Salesforce DX project:

   ```bash
   git clone https://github.com/Vishwas-Srivastav/lwc-generic-lookup
   ```
2. Deploy the LWC and Apex class to your Salesforce org.
3. Add the `<c-lookup>` component where a generic lookup is required.

---

## Roadmap

* Generic lookup for any object
* Multi-field search (e.g., Name + Code)
* Configurable search result templates
* Unit tests (Apex + Jest for LWC)

---

## Contributing

Contributions and ideas are welcome!

* Fork the repo
* Create a feature branch
* Submit a pull request

---

## License

This project is licensed under the **MIT License** – free to use and modify.
