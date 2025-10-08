# Markdown Resume & Cover Letter Generator

A professional resume and cover letter generation system using Markdown and modern CSS styling. Create beautiful, ATS-friendly PDFs optimized for software engineering positions.

## Features

✨ **Professional Design**
- Modern blue color scheme optimized for tech roles
- Inter font family for clean, readable typography
- JetBrains Mono for code/technical terms
- Cohesive styling across resume and cover letter

📄 **Two Document Types**
- **Resume**: Compact 2-page layout with tight spacing
- **Cover Letter**: Traditional letter format with comfortable reading space

🤖 **Smart Auto-Detection**
- Automatically applies correct styling based on filename
- Files with "cover-letter" use letter formatting
- Everything else uses resume formatting

🎯 **Engineering-Optimized**
- ATS-compatible structure
- Blue accents highlight technical keywords
- Clean section headers with gradient backgrounds
- Company names with left-border accents
- Colored bullet points for visual hierarchy

## Quick Start

### Generate Content with Claude.ai

1. Go to [Claude.ai](https://claude.ai)
2. Use a prompt like this:

```
Align my resume to the following job description. Create a resume and a
cover letter in markdown format.

Here are a couple talking points for the cover letter:
- [Your talking point 1]
- [Your talking point 2]

Include a letterhead in the cover letter similar to the resume for a
cohesive look and feel.

Job Description:
[Paste job description here]

My Background:
[Paste your current resume or background info]
```

3. Copy the markdown output to `.md` files
4. Convert to PDF using the script below

### Convert to PDF

```bash
# Convert any markdown file
./md2pdf.sh your-file.md

# Resume example
./md2pdf.sh derek-hildreth-resume.md

# Cover letter example (auto-detected)
./md2pdf.sh magicschool-cover-letter.md
```

## File Structure

```
.
├── README.md                          # This file
├── md2pdf.sh                          # Conversion script
├── config.json                        # Resume styling config
├── cover-letter-config.json          # Cover letter styling config
├── resume.css                         # Resume stylesheet
├── cover-letter.css                   # Cover letter stylesheet
├── your-resume.md                     # Your resume markdown
└── your-cover-letter.md              # Your cover letter markdown
```

## Markdown Structure

### Resume Format

```markdown
# Your Name
**Location** • email@example.com • linkedin.com/in/username • github.com/username

## Job Title | Specialization | Value Proposition

Brief professional summary paragraph highlighting your expertise and experience.

## Selected Leadership Achievements

- **Achievement Type:** Description of achievement
- **Another Achievement:** Description of achievement

---

## Work Experience

### Company Name | Location
**Job Title** • Start Date - End Date

Brief role description paragraph.

- Achievement or responsibility
- Another achievement
- Technical accomplishment

### Previous Company | Location
**Previous Role** • Start Date - End Date

[Continue pattern...]

## Education

**Degree Name**
University Name | Start Date - End Date

## Core Skills

**Category:** Skill, Skill, Skill, Skill
**Another Category:** Skill, Skill, Skill
```

### Cover Letter Format

```markdown
# Your Name
**Location** • email@example.com • linkedin.com/in/username • github.com/username

---

Hiring Team
Company Name

Opening paragraph mentioning the role and your enthusiasm.

Body paragraph highlighting relevant experience and **key technical skills**.

Another paragraph showing cultural fit and **specific achievements**.

Closing paragraph with call to action.

Thank you for considering my application.

**Your Name**
```

## Styling Features

### Resume Styling
- **Font Size**: 10px base
- **Line Height**: 1.35 (tight for 2-page format)
- **Margins**: 12mm top/bottom, 18mm left/right
- **Section Headers**: White text on blue gradient background
- **Company Names**: Gray background with blue left border
- **Bullet Points**: Blue colored markers
- **Technical Terms**: Highlighted when bolded

### Cover Letter Styling
- **Font Size**: 11px base
- **Line Height**: 1.65 (comfortable reading)
- **Margins**: 20mm top/bottom, 25mm left/right
- **Text Alignment**: Justified for professional appearance
- **Paragraph Spacing**: 14px between paragraphs
- **Technical Terms**: Blue colored when bolded
- **Letterhead**: Same as resume with divider line

## Customization

### Change Colors

Edit `resume.css` or `cover-letter.css`:

```css
/* Primary blue - change these hex values */
#2563eb  /* Main blue accent */
#1e40af  /* Darker blue for text emphasis */
#3b82f6  /* Lighter blue for highlights */
```

### Adjust Spacing

**For Resume** (edit `resume.css`):
```css
.markdown-body {
  line-height: 1.35;  /* Adjust density */
}

.markdown-body h2 {
  margin: 12px 0 6px 0;  /* Section spacing */
}
```

**For Cover Letter** (edit `cover-letter.css`):
```css
.markdown-body p {
  margin: 0 0 14px 0;  /* Paragraph spacing */
  line-height: 1.65;   /* Reading comfort */
}
```

### Change Fonts

Update the `@import` line in CSS files:

```css
@import url('https://fonts.googleapis.com/css2?family=YourFont:wght@400;500;600;700;800&display=swap');

.markdown-body {
  font-family: 'YourFont', sans-serif;
}
```

## Tips for Best Results

### Resume Tips
1. **Keep it to 2 pages** - The styling is optimized for exactly 2 pages
2. **Use bold for technical keywords** - They'll appear in blue
3. **Bullet points for achievements** - More scannable than paragraphs
4. **Quantify impact** - Include numbers, percentages, scale
5. **Recent experience first** - Reverse chronological order

### Cover Letter Tips
1. **Keep it to 1 page** - Aim for 4-5 paragraphs
2. **Bold 2-3 key phrases** - Draws eye to important points
3. **Justify your interest** - Be specific about why this role
4. **Show, don't tell** - Use concrete examples
5. **Match the job description** - Use their language

### Using Claude.ai Effectively

**For Job-Specific Applications:**
```
Create a tailored resume and cover letter for this [Job Title] role at
[Company]. Emphasize my experience with [Technology/Skill] and
[Another Skill].

In the cover letter, mention:
- My experience building [specific type of system]
- Why I'm excited about [company mission/product]
- My [leadership/technical] philosophy

Use markdown format with the structure from my existing resume.
```

**For General Updates:**
```
Update my resume to better highlight my expertise in [Skill Area].
Reorganize the achievements section to emphasize [Type of Work].
Keep the markdown formatting consistent.
```

## Troubleshooting

**PDF not generating?**
- Check that `md-to-pdf` is installed: `npm install -g md-to-pdf`
- Verify file paths are correct (use absolute paths)

**Styling not applied?**
- Ensure `.css` and `.json` files are in the same directory as the script
- Check that file contains valid markdown
- Verify the config file path is correct

**Cover letter using resume styling?**
- Ensure filename contains "cover-letter", "cover_letter", or "letter"
- Or manually specify: `md-to-pdf file.md --config-file cover-letter-config.json`

**Content overflowing 2 pages?**
- Remove less relevant bullet points
- Shorten descriptions
- Combine related achievements
- Consider removing older roles

## Requirements

- **Node.js**: v14 or higher
- **md-to-pdf**: `npm install -g md-to-pdf`
- **Bash**: For running the conversion script

## Examples

### Generate Resume
```bash
./md2pdf.sh derek-hildreth-staff-software-engineer.md
# Output: derek-hildreth-staff-software-engineer.pdf
```

### Generate Cover Letter
```bash
./md2pdf.sh company-name-cover-letter.md
# Output: company-name-cover-letter.pdf
# Automatically uses cover letter styling
```

### Batch Convert
```bash
for file in *.md; do
  ./md2pdf.sh "$file"
done
```

## Color Palette Reference

| Color | Hex | Usage |
|-------|-----|-------|
| Primary Blue | `#2563eb` | Borders, section backgrounds |
| Dark Blue | `#1e40af` | Text emphasis, technical terms |
| Light Blue | `#3b82f6` | Bullets, highlights |
| Dark Slate | `#0f172a` | Headings, main text |
| Medium Slate | `#475569` | Body text |
| Light Slate | `#64748b` | Secondary text |
| Very Light | `#f8fafc` | Backgrounds |

## License

This is a personal resume generation system. Feel free to fork and adapt for your own use!

## Credits

- **Fonts**: [Inter](https://rsms.me/inter/) by Rasmus Andersson, [JetBrains Mono](https://www.jetbrains.com/lp/mono/)
- **PDF Generation**: [md-to-pdf](https://github.com/simonhaenisch/md-to-pdf)
- **Content Generation**: [Claude.ai](https://claude.ai) by Anthropic

---

**Pro Tip**: Keep your master resume markdown file comprehensive, then ask Claude.ai to create tailored versions for specific job applications. This lets you maintain one source of truth while customizing for each opportunity! 🚀
