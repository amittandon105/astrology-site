# Vedic Jyotish Navgraha Nivaran Kendra: website

Single-file static site (`index.html`, inline CSS and JS, no build step) for the centre run by Tandon Jewellers, Gudari Bazar, Samastipur.

## Before going live
Set your phone and WhatsApp numbers and social links in the `PHONE`, `WHATSAPP` and `LINKS` variables at the bottom of `index.html` (the Call, WhatsApp and social buttons stay hidden until set). Replace the photo monogram with a real photo, and confirm fees. The phone, name and address in the JSON-LD must match the Google Business Profile exactly.

Quick check:

```bash
grep -n "PHONE =" index.html
```

## Deploy on GitHub Pages
1. Create a GitHub repository under `amittandon105` (for example `astrology-site`) and add it as the remote (not done yet):
   ```bash
   git remote add origin git@github.com:amittandon105/astrology-site.git
   git push -u origin main
   ```
2. In the repo go to Settings > Pages. Source: "Deploy from a branch", branch `main`, folder `/ (root)`.
3. The `CNAME` file in this repo already contains `astrology.tandonjewellers.com`; Pages will pick it up. Also enter the same domain under Settings > Pages > Custom domain.

## DNS for astrology.tandonjewellers.com
At the DNS provider for `tandonjewellers.com`, add one record:

| Type  | Name        | Value                  |
|-------|-------------|------------------------|
| CNAME | `astrology` | `amittandon105.github.io` |

Wait for DNS to propagate (minutes to a few hours), then in Settings > Pages tick **Enforce HTTPS** once it becomes available (GitHub issues the certificate automatically).

## Verify
```bash
dig astrology.tandonjewellers.com +short
curl -I https://astrology.tandonjewellers.com
```

## Notes
- Testimonials section is commented out in `index.html`. Add only real ones, with the customer's permission.
- Do not add claims such as "100% accurate" or "guaranteed".
