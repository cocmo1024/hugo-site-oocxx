---
title: 从 Markdown 到 PDF或Word：最佳格式转换方案及优化指南
description: Markdown 以其简洁、高效的文本格式广泛用于文档编写，但最终许多 Markdown 文档需要转换为 PDF 或 Word 格式，以便打印、分享或正式发布。本文将详细介绍 Markdown **最佳格式转换方案**，并提供**优化指南**，让你的 PDF 或 Word 文件更加专业美观。
date: 2024-07-15
lastmod: 2024-07-15
draft: false
ummary: 本文将详细介绍 Markdown 最佳格式转换方案，并提供优化指南，让你的 PDF 或 Word 文件更加专业美观。
keywords:
  - 主关键词
  - 长尾关键词1
  - 长尾关键词2
categories:
  - 技术教程
tags:
  - hugo
  - seo
  - static
  - site
author: Walter
lang: en
images:
  - /images/posts/cover-example.webp
image: "cover.webp"   # ✅ 相对路径指向同目录下图片
ShowToc: true
comments: false
no_ads: false
---

## Preface

Markdown is widely used in document writing for its concise and efficient text format, but many Markdown documents need to be converted to PDF or Word format for printing, sharing or formal publication. This article will introduce the best Markdown format conversion solution in detail and provide an optimization guide to make your PDF or Word file more professional and beautiful.

---

## **Part I: The best solution for converting Markdown to PDF**

### **1. Pandoc: The most powerful Markdown conversion tool**

Pandoc is a general document conversion tool that supports converting Markdown to PDF and provides rich format adjustment options.

#### **Install [[Pandoc]]**

- Windows/macOS/Linux can install [Pandoc official website](https://pandoc.org/)
- It is recommended to install LaTeX at the same time (for high-quality PDF rendering):
- **Windows**: Install [MiKTeX](https://miktex.org/)
- **Mac**: Install [MacTeX](http://www.tug.org/mactex/)
- **Linux**: Use `sudo apt install texlive`

#### **Basic conversion command**

```sh
pandoc input.md -o output.pdf
```

#### **Enhanced format conversion command**

```sh
pandoc input.md -o output.pdf --pdf-engine=xelatex -V mainfont="SimSun"
```

- `--pdf-engine=xelatex` makes PDF generation more beautiful.
- `-V mainfont="SimSun"` sets the font to **Songti** (suitable for Chinese documents).

### **2. [[Typora]]: One-click PDF export**

Typora provides the simplest Markdown to PDF solution, suitable for ordinary users.

#### **Operation steps**:
{{< slot-ad-inline >}}
1. Open the Markdown file.
2. Select `File` → `Export` → `PDF`.
3. Adjust the page settings in the pop-up dialog box.

### **3. Markdown PDF plug-in ([[VS Code]])**

If you use VS Code to edit Markdown, you can install the **Markdown PDF plug-in** to export PDF directly.

#### **Install the plug-in**

4. Open the **Extension Store** in VS Code.
5. Search for `Markdown PDF` and install it.
6. Open the Markdown file, right-click and select `Markdown PDF: Export PDF`.

#### **Advantages**

- Supports **Custom CSS**, making the PDF more beautiful.

- No need to install additional software.

---
{{< slot-ad-inline >}}
## **Part 2: The best solution for converting Markdown to Word**

### **1. Pandoc converts Markdown to Word**

If you want to convert Markdown to `.docx` format, Pandoc is still the most powerful tool.

#### **Basic conversion command**

```sh
pandoc input.md -o output.docx
```

#### **Enhanced format conversion command**

```sh
pandoc input.md -o output.docx --reference-doc=template.docx
```

- `--reference-doc=template.docx` allows you to specify a Word template to ensure that the format meets your requirements.

### **2. Typora exports Word with one click**

Typora also supports Markdown export to Word (`.docx`) directly.

#### **Steps**

7. Open the Markdown file.

8. Select `File` → `Export` → `Word (.docx)`.

9. The Word file format is well maintained and suitable for daily office needs.

### **3. [[Dillinger]] Convert Markdown to Word online**

If you don't want to install any software, you can use **Dillinger** (online Markdown editor) to export Word files.

#### **Steps**

10. Open [Dillinger](https://dillinger.io/).

11. Upload the Markdown file or edit it directly on the web page.

12. Select `Export` → `DOCX`.

---

## **Part 3: Optimize PDF and Word formats exported from Markdown**

### **1. Use YAML Front Matter to set metadata**

Pandoc allows you to use YAML to set document metadata to improve export quality.

```markdown
---
title: "My Document"
author: "Zhang San"
date: "2024-02-13"
---
```

Then execute Pandoc conversion:

```sh
pandoc input.md -o output.pdf --pdf-engine=xelatex
```

### **2. Customize CSS style to optimize export effect**

If your Markdown editor supports CSS (such as VS Code), you can use CSS to make PDF/Word more beautiful.

```css
body {
font-family: "SimHei", sans-serif;
line-height: 1.6;
max-width: 800px;
margin: auto;
}
```

Applying this CSS to Markdown rendering can improve the quality of typesetting.

### **3. Choose the right font and typesetting format**

- **Word**: Use `--reference-doc=template.docx` to ensure consistent formatting.

- **PDF**: Use `--pdf-engine=xelatex` to set a font suitable for Chinese.

### **4. Use separators, directories, and images reasonably**

- Insert `---` in the Markdown document to create a page separator.

- Use `[TOC]` to generate a table of contents (supported by some editors).

- Use HTML format when inserting images to control the size.

```markdown
<p align="center">
<img src="example.png" width="50%">
</p>
```

---

## **Conclusion**

Markdown is a powerful document format, but it often needs to be converted to PDF or Word when officially released. This guide introduces the **best conversion tools** (Pandoc, Typora, VS Code plug-in, etc.) and **format optimization techniques** (YAML, CSS, custom templates, etc.). I hope this article can help you complete Markdown document conversion more efficiently and make your documents more professional and beautiful.