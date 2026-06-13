# Passive Reconnaissance Report: holbertonschool.com

## 1. Executive Summary
This report contains passive open-source intelligence (OSINT) and infrastructure profiling data for the domain `holbertonschool.com`, acquired via Shodan asset queries, DNS historical records, and public data repositories. No direct active scanning or target interaction was performed.

## 2. Infrastructure & IP Ranges
Shodan host tracking and Anycast mapping indicate that the organization relies heavily on decentralized cloud infrastructure spanning Amazon Web Services (AWS), Cloudflare, Webflow, and Automattic.

### Identified IP Networks & Ranges
*   **Amazon Web Services (AWS)**
    *   `99.83.190.0/24` & `75.2.70.0/24` (AWS Global Accelerator / Traffic Routing)
    *   `54.157.0.0/16` & `54.86.0.0/16` (AWS EC2 US-East-1 - Application Backends)
    *   `13.36.0.0/16` & `13.37.0.0/16` (AWS EC2 EU-West-3 - European Endpoints)
    *   `52.85.96.0/24` (AWS CloudFront CDN - Cache Nodes)
*   **Cloudflare**
    *   `104.16.0.0/12` (Edge Proxy and WAF for help desks)
*   **Automattic (WordPress Hosting)**
    *   `192.0.78.0/24` (Managed endpoints for publication subdomains)
*   **Fastly / Webflow**
    *   `151.139.128.0/24` (Webflow Global Edge caching via Fastly)
    *   `63.35.51.0/24` (Webflow AWS cloud instances)

## 3. Technologies & Frameworks Portfolio
Shodan banner disclosures, HTTP response headers, and passive fingerprinting revealed the following software components running across the subdomains:

### Core Frameworks & CMS
*   **Ruby on Rails**: Utilized for the main portal applications (`apply`, `rails-assets`, `staging-apply`).
*   **Webflow CMS**: Powers the marketing front-end layer and international routing (`www`, `webflow`, `fr.webflow`).
*   **WordPress**: Powers organizational news and blogging engines (`blog`, `blog-new`).
*   **Discourse Forum**: Open-source community solution mapped for internal platform hubs (`lvl2-discourse-staging`).

### Infrastructure Services
*   **Web Servers**: `Nginx` (Reverse proxy for backend systems), `AWS Elastic Load Balancer (ELB)`.
*   **Content Delivery Networks**: `Amazon CloudFront`, `Cloudflare Edge`, `Fastly CDN`.
*   **DNS Architecture**: `Amazon Route 53` (`awsdns-53.org`, `awsdns-10.co.uk`).
*   **SaaS Integrations**: `Zendesk` (Ticketing infrastructure), `Loader.io` (Verification hooks), `Mailgun` / `Google Workspace` (Mail delivery nodes specified in SPF records).
