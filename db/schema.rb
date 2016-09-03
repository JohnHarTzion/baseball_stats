# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  create_table "all_star", id: false, force: :cascade do |t|
    t.text    "player_id"
    t.integer "year"
    t.integer "game_num"
    t.text    "game_id"
    t.text    "team_id"
    t.text    "league_id"
    t.decimal "gp"
    t.decimal "starting_pos"
  end

  create_table "appearances", id: false, force: :cascade do |t|
    t.integer "year"
    t.text    "team_id"
    t.text    "league_id"
    t.text    "player_id"
    t.decimal "g_all"
    t.decimal "gs"
    t.integer "g_batting"
    t.decimal "g_defense"
    t.integer "g_p"
    t.integer "g_c"
    t.integer "g_1b"
    t.integer "g_2b"
    t.integer "g_3b"
    t.integer "g_ss"
    t.integer "g_lf"
    t.integer "g_cf"
    t.integer "g_rf"
    t.integer "g_of"
    t.decimal "g_dh"
    t.decimal "g_ph"
    t.decimal "g_pr"
  end

  create_table "batting", id: false, force: :cascade do |t|
    t.text    "player_id"
    t.integer "year"
    t.integer "stint"
    t.text    "team_id"
    t.text    "league_id"
    t.integer "g"
    t.decimal "ab"
    t.decimal "r"
    t.decimal "h"
    t.decimal "double"
    t.decimal "triple"
    t.decimal "hr"
    t.decimal "rbi"
    t.decimal "sb"
    t.decimal "cs"
    t.decimal "bb"
    t.decimal "so"
    t.decimal "ibb"
    t.decimal "hbp"
    t.decimal "sh"
    t.decimal "sf"
    t.decimal "g_idp"
  end

  create_table "batting_postseason", id: false, force: :cascade do |t|
    t.integer "year"
    t.text    "round"
    t.text    "player_id"
    t.text    "team_id"
    t.text    "league_id"
    t.integer "g"
    t.integer "ab"
    t.integer "r"
    t.integer "h"
    t.integer "double"
    t.integer "triple"
    t.integer "hr"
    t.integer "rbi"
    t.integer "sb"
    t.decimal "cs"
    t.integer "bb"
    t.integer "so"
    t.decimal "ibb"
    t.decimal "hbp"
    t.decimal "sh"
    t.decimal "sf"
    t.decimal "g_idp"
  end

  create_table "college", id: false, force: :cascade do |t|
    t.text "college_id"
    t.text "name_full"
    t.text "city"
    t.text "state"
    t.text "country"
  end

  create_table "fielding", id: false, force: :cascade do |t|
    t.text    "player_id"
    t.integer "year"
    t.integer "stint"
    t.text    "team_id"
    t.text    "league_id"
    t.text    "pos"
    t.integer "g"
    t.decimal "gs"
    t.decimal "inn_outs"
    t.decimal "po"
    t.decimal "a"
    t.decimal "e"
    t.decimal "dp"
    t.decimal "pb"
    t.decimal "wp"
    t.decimal "sb"
    t.decimal "cs"
    t.decimal "zr"
  end

  create_table "fielding_outfield", id: false, force: :cascade do |t|
    t.text    "player_id"
    t.integer "year"
    t.integer "stint"
    t.decimal "glf"
    t.decimal "gcf"
    t.decimal "grf"
  end

  create_table "fielding_postseason", id: false, force: :cascade do |t|
    t.text    "player_id"
    t.integer "year"
    t.text    "team_id"
    t.text    "league_id"
    t.text    "round"
    t.text    "pos"
    t.integer "g"
    t.decimal "gs"
    t.decimal "inn_outs"
    t.integer "po"
    t.integer "a"
    t.integer "e"
    t.integer "dp"
    t.integer "tp"
    t.decimal "pb"
    t.decimal "sb"
    t.decimal "cs"
  end

  create_table "hall_of_fame", id: false, force: :cascade do |t|
    t.text    "player_id"
    t.integer "yearid"
    t.text    "votedby"
    t.decimal "ballots"
    t.decimal "needed"
    t.decimal "votes"
    t.text    "inducted"
    t.text    "category"
    t.text    "needed_note"
  end

  create_table "home_game", id: false, force: :cascade do |t|
    t.integer "year"
    t.text    "league_id"
    t.text    "team_id"
    t.text    "park_id"
    t.text    "span_first"
    t.text    "span_last"
    t.integer "games"
    t.integer "openings"
    t.integer "attendance"
  end

  create_table "manager", id: false, force: :cascade do |t|
    t.text    "player_id"
    t.integer "year"
    t.text    "team_id"
    t.text    "league_id"
    t.integer "inseason"
    t.integer "g"
    t.integer "w"
    t.integer "l"
    t.decimal "rank"
    t.text    "plyr_mgr"
  end

  create_table "manager_award", id: false, force: :cascade do |t|
    t.text    "player_id"
    t.text    "award_id"
    t.integer "year"
    t.text    "league_id"
    t.text    "tie"
    t.decimal "notes"
  end

  create_table "manager_award_vote", id: false, force: :cascade do |t|
    t.text    "award_id"
    t.integer "year"
    t.text    "league_id"
    t.text    "player_id"
    t.integer "points_won"
    t.integer "points_max"
    t.integer "votes_first"
  end

  create_table "manager_half", id: false, force: :cascade do |t|
    t.text    "player_id"
    t.integer "year"
    t.text    "team_id"
    t.text    "league_id"
    t.integer "inseason"
    t.integer "half"
    t.integer "g"
    t.integer "w"
    t.integer "l"
    t.integer "rank"
  end

  create_table "park", id: false, force: :cascade do |t|
    t.text "park_id"
    t.text "park_name"
    t.text "park_alias"
    t.text "city"
    t.text "state"
    t.text "country"
  end

  create_table "pitching", id: false, force: :cascade do |t|
    t.text    "player_id"
    t.integer "year"
    t.integer "stint"
    t.text    "team_id"
    t.text    "league_id"
    t.integer "w"
    t.integer "l"
    t.integer "g"
    t.integer "gs"
    t.integer "cg"
    t.integer "sho"
    t.integer "sv"
    t.decimal "ipouts"
    t.integer "h"
    t.integer "er"
    t.integer "hr"
    t.integer "bb"
    t.integer "so"
    t.decimal "baopp"
    t.decimal "era"
    t.decimal "ibb"
    t.decimal "wp"
    t.decimal "hbp"
    t.integer "bk"
    t.decimal "bfp"
    t.decimal "gf"
    t.integer "r"
    t.decimal "sh"
    t.decimal "sf"
    t.decimal "g_idp"
  end

  create_table "pitching_postseason", id: false, force: :cascade do |t|
    t.text    "player_id"
    t.integer "year"
    t.text    "round"
    t.text    "team_id"
    t.text    "league_id"
    t.integer "w"
    t.integer "l"
    t.integer "g"
    t.integer "gs"
    t.integer "cg"
    t.integer "sho"
    t.integer "sv"
    t.integer "ipouts"
    t.integer "h"
    t.integer "er"
    t.integer "hr"
    t.integer "bb"
    t.integer "so"
    t.text    "baopp"
    t.decimal "era"
    t.decimal "ibb"
    t.decimal "wp"
    t.decimal "hbp"
    t.decimal "bk"
    t.decimal "bfp"
    t.integer "gf"
    t.integer "r"
    t.decimal "sh"
    t.decimal "sf"
    t.decimal "g_idp"
  end

  create_table "player", id: false, force: :cascade do |t|
    t.text    "player_id"
    t.decimal "birth_year"
    t.decimal "birth_month"
    t.decimal "birth_day"
    t.text    "birth_country"
    t.text    "birth_state"
    t.text    "birth_city"
    t.decimal "death_year"
    t.decimal "death_month"
    t.decimal "death_day"
    t.text    "death_country"
    t.text    "death_state"
    t.text    "death_city"
    t.text    "name_first"
    t.text    "name_last"
    t.text    "name_given"
    t.decimal "weight"
    t.decimal "height"
    t.text    "bats"
    t.text    "throws"
    t.text    "debut"
    t.text    "final_game"
    t.text    "retro_id"
    t.text    "bbref_id"
  end

  create_table "player_award", id: false, force: :cascade do |t|
    t.text    "player_id"
    t.text    "award_id"
    t.integer "year"
    t.text    "league_id"
    t.text    "tie"
    t.text    "notes"
  end

  create_table "player_award_vote", id: false, force: :cascade do |t|
    t.text    "award_id"
    t.integer "year"
    t.text    "league_id"
    t.text    "player_id"
    t.decimal "points_won"
    t.integer "points_max"
    t.decimal "votes_first"
  end

  create_table "player_college", id: false, force: :cascade do |t|
    t.text    "player_id"
    t.text    "college_id"
    t.integer "year"
  end

  create_table "postseason", id: false, force: :cascade do |t|
    t.integer "year"
    t.text    "round"
    t.text    "team_id_winner"
    t.text    "league_id_winner"
    t.text    "team_id_loser"
    t.text    "league_id_loser"
    t.integer "wins"
    t.integer "losses"
    t.integer "ties"
  end

  create_table "salary", id: false, force: :cascade do |t|
    t.integer "year"
    t.text    "team_id"
    t.text    "league_id"
    t.text    "player_id"
    t.integer "salary"
  end

  create_table "team", id: false, force: :cascade do |t|
    t.integer "year"
    t.text    "league_id"
    t.text    "team_id"
    t.text    "franchise_id"
    t.text    "div_id"
    t.integer "rank"
    t.integer "g"
    t.decimal "ghome"
    t.integer "w"
    t.integer "l"
    t.text    "div_win"
    t.text    "wc_win"
    t.text    "lg_win"
    t.text    "ws_win"
    t.integer "r"
    t.integer "ab"
    t.integer "h"
    t.integer "double"
    t.integer "triple"
    t.integer "hr"
    t.integer "bb"
    t.decimal "so"
    t.decimal "sb"
    t.decimal "cs"
    t.decimal "hbp"
    t.decimal "sf"
    t.integer "ra"
    t.integer "er"
    t.decimal "era"
    t.integer "cg"
    t.integer "sho"
    t.integer "sv"
    t.integer "ipouts"
    t.integer "ha"
    t.integer "hra"
    t.integer "bba"
    t.integer "soa"
    t.integer "e"
    t.decimal "dp"
    t.decimal "fp"
    t.text    "name"
    t.text    "park"
    t.decimal "attendance"
    t.integer "bpf"
    t.integer "ppf"
    t.text    "team_id_br"
    t.text    "team_id_lahman45"
    t.text    "team_id_retro"
  end

  create_table "team_franchise", id: false, force: :cascade do |t|
    t.text "franchise_id"
    t.text "franchise_name"
    t.text "active"
    t.text "na_assoc"
  end

  create_table "team_half", id: false, force: :cascade do |t|
    t.integer "year"
    t.text    "league_id"
    t.text    "team_id"
    t.integer "half"
    t.text    "div_id"
    t.text    "div_win"
    t.integer "rank"
    t.integer "g"
    t.integer "w"
    t.integer "l"
  end

end
