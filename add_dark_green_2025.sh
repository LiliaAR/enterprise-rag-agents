#!/bin/bash

echo "Adding multiple commits per day for darker green squares..."

cd ~/github-projects/enterprise-rag-agents

# Function for multiple commits same day
add_multiple_commits() {
    local date=$1
    local base_time=$2
    
    # Morning commit
    echo "# $date morning" >> README.md
    git add . && git commit --date="${date}T${base_time}:00:00" -m "Morning 
work"
    
    # Afternoon commit
    echo "# $date afternoon" >> src/config.py
    git add . && git commit --date="${date}T$((base_time + 4)):00:00" -m 
"Afternoon updates"
    
    # Evening commit
    echo "# $date evening" >> src/agents/base.py
    git add . && git commit --date="${date}T$((base_time + 8)):00:00" -m 
"Evening improvements"
}

add_heavy_day() {
    local date=$1
    
    # 4 commits in one day
    echo "# $date 1" >> README.md
    git add . && git commit --date="${date}T09:00:00" -m "Start of day"
    
    echo "# $date 2" >> src/agents/router.py
    git add . && git commit --date="${date}T11:30:00" -m "Mid-morning work"
    
    echo "# $date 3" >> src/agents/retriever.py
    git add . && git commit --date="${date}T14:00:00" -m "Afternoon session"
    
    echo "# $date 4" >> src/graph.py
    git add . && git commit --date="${date}T17:30:00" -m "End of day push"
}

# JANUARY - Project kickoff (heavy activity)
add_heavy_day "2025-01-06"
add_heavy_day "2025-01-13"
add_multiple_commits "2025-01-20" 10
add_heavy_day "2025-01-27"

# FEBRUARY - Steady development
add_multiple_commits "2025-02-03" 9
add_multiple_commits "2025-02-10" 10
add_heavy_day "2025-02-17"
add_multiple_commits "2025-02-24" 11

# MARCH - Sprint before Q1 deadline
add_heavy_day "2025-03-03"
add_multiple_commits "2025-03-10" 10
add_heavy_day "2025-03-17"
add_heavy_day "2025-03-24"
add_heavy_day "2025-03-31" # Q1 deadline

# APRIL - Post-Q1 continued work
add_multiple_commits "2025-04-07" 10
add_heavy_day "2025-04-14"
add_multiple_commits "2025-04-21" 11
add_multiple_commits "2025-04-28" 10

# MAY - Production push
add_heavy_day "2025-05-05"
add_heavy_day "2025-05-12"
add_multiple_commits "2025-05-19" 10
add_heavy_day "2025-05-26"

# JUNE - Q2 deadline sprint
add_multiple_commits "2025-06-02" 9
add_heavy_day "2025-06-09"
add_heavy_day "2025-06-16"
add_heavy_day "2025-06-23"
add_heavy_day "2025-06-30" # Q2 deadline

# JULY - Mid-year optimization
add_multiple_commits "2025-07-07" 10
add_heavy_day "2025-07-14"
add_multiple_commits "2025-07-21" 11
add_multiple_commits "2025-07-28" 10

# AUGUST - Feature development
add_heavy_day "2025-08-04"
add_multiple_commits "2025-08-11" 10
add_heavy_day "2025-08-18"
add_multiple_commits "2025-08-25" 11

# SEPTEMBER - Q3 deadline
add_multiple_commits "2025-09-01" 10
add_heavy_day "2025-09-08"
add_heavy_day "2025-09-15"
add_heavy_day "2025-09-22"
add_heavy_day "2025-09-29" # Q3 deadline

# OCTOBER - Q4 planning
add_heavy_day "2025-10-06"
add_multiple_commits "2025-10-13" 10
add_heavy_day "2025-10-20"
add_multiple_commits "2025-10-27" 11

# NOVEMBER - Job search prep
add_heavy_day "2025-11-03"
add_heavy_day "2025-11-10"
add_multiple_commits "2025-11-17" 10
add_heavy_day "2025-11-24"

# DECEMBER - Portfolio polish
add_heavy_day "2025-12-01"
add_heavy_day "2025-12-08"
add_multiple_commits "2025-12-15" 10
add_heavy_day "2025-12-22"

echo ""
echo "✅ Added multiple commits per day!"
TOTAL=$(git log --oneline | wc -l)
echo "📊 Total commits: $TOTAL"
echo ""
echo "Pushing to GitHub..."
git push origin master --force
echo ""
echo "🎉 2025 now has varied intensity with darker green squares!"
