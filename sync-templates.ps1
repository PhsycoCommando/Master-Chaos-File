# Sync Templates Script
# Run this script whenever you have perfected new rules, workflows, skills, or prompts in the Master Chaos File.
# It will forcefully synchronize the pristine templates with your latest verified architecture.

$rootDir = "c:\PHSYCO\Antigravity\Master Chaos File"
$templates = @(
    "$rootDir\templates\Merge to Existing Projects",
    "$rootDir\templates\New Projects Template"
)

$foldersToSync = @(".agents", "directives", "execution", "skills")
$filesToSync = @("AGENTS.md", "CLAUDE.md", "GEMINI.md")

Write-Host "Syncing Master Chaos architecture into templates..." -ForegroundColor Cyan

foreach ($template in $templates) {
    Write-Host "Updating Template: $($template | Split-Path -Leaf)" -ForegroundColor Yellow
    
    # Sync Folders
    foreach ($folder in $foldersToSync) {
        $sourcePath = "$rootDir\$folder"
        $destPath = "$template\$folder"
        
        if (Test-Path $sourcePath) {
            # Force replace the template directory with the master chaotic directory
            Copy-Item -Path "$sourcePath\*" -Destination $destPath -Recurse -Force
            Write-Host "  [+] Synced folder: $folder" -ForegroundColor Green
        }
    }

    # Sync Files
    foreach ($file in $filesToSync) {
        $sourceFile = "$rootDir\$file"
        $destFile = "$template\$file"
        
        if (Test-Path $sourceFile) {
            Copy-Item -Path $sourceFile -Destination $destFile -Force
            Write-Host "  [+] Synced file: $file" -ForegroundColor Green
        }
    }
}

Write-Host "Sync Complete! Both templates are perfectly identical to the Master Chaos environment." -ForegroundColor Cyan
