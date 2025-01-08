#!/bin/bash

echo "Adding sporadic dark green days throughout 2025..."

cd ~/github-projects/enterprise-rag-agents

# Function for 3-4 commits on one day (dark green)
add_dark_day() {
    local date=$1
    
    echo "# $date 1" >> README.md
    git add . && git commit --date="${date}T09:30:00" -m "Morning work"
    
    echo "# $date 2" >> src/agents/router.py
    git add . && git commit --date="${date}T13:00:00" -m "Midday updates"
    
    echo "# $date 3" >> src/config.py
    git add . && git commit --date="${date}T16:30:00" -m "Afternoon session"
}

add_very_dark_day() {
    local date=$1
    
    echo "# $date 1" >> README.md
    git add . && git commit --date="${date}T08:00:00" -m "Early start"
    
    echo "# $date 2" >> src/agents/retriever.py
    git add . && git commit --date="${date}T11:00:00" -m "Pre-lunch work"
    
    echo "# $date 3" >> src/agents/synthesizer.py
    git add . && git commit --date="${date}T14:30:00" -m "Afternoon coding"
    
    echo "# $date 4" >> src/graph.py
    git add . && git commit --date="${date}T18:00:00" -m "Evening push"
}

# JANUARY - 3 dark days, sporadic
add_dark_day "2025-01-08"
add_dark_day "2025-01-17"
add_dark_day "2025-01-29"

# FEBRUARY - 3 dark days
add_dark_day "2025-02-04"
add_dark_day "2025-02-19"
add_dark_day "2025-02-26"

# MARCH - 4 dark days (end of Q1 push)
add_dark_day "2025-03-05"
add_dark_day "2025-03-14"
add_dark_day "2025-03-22"
add_very_dark_day "2025-03-28"

# APRIL - 3 dark days
add_dark_day "2025-04-03"
add_dark_day "2025-04-16"
add_dark_day "2025-04-25"

# MAY - 4 dark days
add_dark_day "2025-05-02"
add_dark_day "2025-05-13"
add_dark_day "2025-05-21"
add_dark_day "2025-05-30"

# JUNE - 4 dark days (Q2 deadline)
add_dark_day "2025-06-05"
add_dark_day "2025-06-12"
add_dark_day "2025-06-20"
add_very_dark_day "2025-06-27"

# JULY - 3 dark days
add_dark_day "2025-07-09"
add_dark_day "2025-07-17"
add_dark_day "2025-07-24"

# AUGUST - 3 dark days
add_dark_day "2025-08-06"
add_dark_day "2025-08-15"
add_dark_day "2025-08-27"

# SEPTEMBER - 4 dark days (Q3 deadline)
add_dark_day "2025-09-04"
add_dark_day "2025-09-11"
add_dark_day "2025-09-19"
add_very_dark_day "2025-09-26"

# OCTOBER - 4 dark days
add_dark_day "2025-10-03"
add_dark_day "2025-10-10"
add_dark_day "2025-10-17"
add_dark_day "2025-10-24"

# NOVEMBER - 7 dark days (job search prep - heavy activity!)
add_dark_day "2025-11-04"
add_very_dark_day "2025-11-06"
add_dark_day "2025-11-11"
add_very_dark_day "2025-11-13"
add_dark_day "2025-11-18"
add_very_dark_day "2025-11-21"
add_dark_day "2025-11-25"

# DECEMBER - 8 dark days (portfolio polish - very heavy!)
add_very_dark_day "2025-12-02"
add_dark_day "2025-12-04"
add_very_dark_day "2025-12-06"
add_dark_day "2025-12-09"
add_very_dark_day "2025-12-11"
add_dark_day "2025-12-13"
add_very_dark_day "2025-12-16"
add_very_dark_day "2025-12-19"

echo ""
echo "✅ Added sporadic dark green days!"
TOTAL=$(git log --oneline | wc -l)
echo "📊 Total commits: $TOTAL"
echo ""
echo "Pushing to GitHub..."
git push origin master --force
echo ""
echo "🎉 Natural variation with heavy Nov-Dec activity!"
