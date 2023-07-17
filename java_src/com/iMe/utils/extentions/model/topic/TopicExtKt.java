package com.iMe.utils.extentions.model.topic;

import com.iMe.p031ui.topics.TopicInfo;
import com.iMe.storage.data.repository.topics.Topic;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3417R;
/* compiled from: TopicExt.kt */
/* loaded from: classes4.dex */
public final class TopicExtKt {

    /* compiled from: TopicExt.kt */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Topic.values().length];
            try {
                iArr[Topic.ANIMALS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Topic.ART.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Topic.ASTROLOGY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Topic.AUTO.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Topic.BLOGS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[Topic.BOOKS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[Topic.BUSINESS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[Topic.CRYPTO.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[Topic.DESIGN.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[Topic.DEVELOP.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[Topic.ECONOMY.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[Topic.EDUCATION.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[Topic.FAMILY.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[Topic.FASHION.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[Topic.FILMS.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[Topic.FINANCE.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[Topic.FOOD.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[Topic.FRIENDS.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[Topic.GAMES.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[Topic.HOBBIES.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr[Topic.HOME.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr[Topic.HUMOR.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr[Topic.f393IT.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr[Topic.JOB.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr[Topic.LAWS.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr[Topic.LIFEHACK.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                iArr[Topic.MARKETING.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                iArr[Topic.MEDICINE.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                iArr[Topic.MUSIC.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                iArr[Topic.NEWS.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                iArr[Topic.POLITICS.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                iArr[Topic.QUOTES.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                iArr[Topic.RELIGION.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                iArr[Topic.SALES.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                iArr[Topic.SCIENCE.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                iArr[Topic.SPORT.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                iArr[Topic.TECHNOLOGY.ordinal()] = 37;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                iArr[Topic.TELEGRAM.ordinal()] = 38;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                iArr[Topic.TRAVEL.ordinal()] = 39;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                iArr[Topic.f394TV.ordinal()] = 40;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                iArr[Topic.ADULTHOOD.ordinal()] = 41;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                iArr[Topic.BOT.ordinal()] = 42;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                iArr[Topic.CALCULATOR.ordinal()] = 43;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                iArr[Topic.BEARD.ordinal()] = 44;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                iArr[Topic.CHEF.ordinal()] = 45;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                iArr[Topic.CHESS.ordinal()] = 46;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                iArr[Topic.CLOCHE.ordinal()] = 47;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                iArr[Topic.COFFEE.ordinal()] = 48;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                iArr[Topic.COLOSSEUM.ordinal()] = 49;
            } catch (NoSuchFieldError unused49) {
            }
            try {
                iArr[Topic.CUBES.ordinal()] = 50;
            } catch (NoSuchFieldError unused50) {
            }
            try {
                iArr[Topic.FLOWER.ordinal()] = 51;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                iArr[Topic.FUNDS.ordinal()] = 52;
            } catch (NoSuchFieldError unused52) {
            }
            try {
                iArr[Topic.SHOE.ordinal()] = 53;
            } catch (NoSuchFieldError unused53) {
            }
            try {
                iArr[Topic.PALM.ordinal()] = 54;
            } catch (NoSuchFieldError unused54) {
            }
            try {
                iArr[Topic.WAND.ordinal()] = 55;
            } catch (NoSuchFieldError unused55) {
            }
            try {
                iArr[Topic.MEDAL.ordinal()] = 56;
            } catch (NoSuchFieldError unused56) {
            }
            try {
                iArr[Topic.MISSION.ordinal()] = 57;
            } catch (NoSuchFieldError unused57) {
            }
            try {
                iArr[Topic.PAGODA.ordinal()] = 58;
            } catch (NoSuchFieldError unused58) {
            }
            try {
                iArr[Topic.PILL.ordinal()] = 59;
            } catch (NoSuchFieldError unused59) {
            }
            try {
                iArr[Topic.PINGPONG.ordinal()] = 60;
            } catch (NoSuchFieldError unused60) {
            }
            try {
                iArr[Topic.PIZZA.ordinal()] = 61;
            } catch (NoSuchFieldError unused61) {
            }
            try {
                iArr[Topic.ROCKET.ordinal()] = 62;
            } catch (NoSuchFieldError unused62) {
            }
            try {
                iArr[Topic.UFO.ordinal()] = 63;
            } catch (NoSuchFieldError unused63) {
            }
            try {
                iArr[Topic.DUCK.ordinal()] = 64;
            } catch (NoSuchFieldError unused64) {
            }
            try {
                iArr[Topic.SCISSORS.ordinal()] = 65;
            } catch (NoSuchFieldError unused65) {
            }
            try {
                iArr[Topic.MELON.ordinal()] = 66;
            } catch (NoSuchFieldError unused66) {
            }
            try {
                iArr[Topic.SUN.ordinal()] = 67;
            } catch (NoSuchFieldError unused67) {
            }
            try {
                iArr[Topic.DARTS.ordinal()] = 68;
            } catch (NoSuchFieldError unused68) {
            }
            try {
                iArr[Topic.TROPHY.ordinal()] = 69;
            } catch (NoSuchFieldError unused69) {
            }
            try {
                iArr[Topic.UMBRELLA.ordinal()] = 70;
            } catch (NoSuchFieldError unused70) {
            }
            try {
                iArr[Topic.GLASSES.ordinal()] = 71;
            } catch (NoSuchFieldError unused71) {
            }
            try {
                iArr[Topic.OTHER.ordinal()] = 72;
            } catch (NoSuchFieldError unused72) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final TopicInfo info(Topic topic) {
        Intrinsics.checkNotNullParameter(topic, "<this>");
        switch (WhenMappings.$EnumSwitchMapping$0[topic.ordinal()]) {
            case 1:
                return new TopicInfo(C3417R.C3418color.topic_green, C3417R.string.topics_title_animals, C3417R.C3419drawable.fork_topic_animals_small);
            case 2:
                return new TopicInfo(C3417R.C3418color.topic_orange, C3417R.string.topics_title_art, C3417R.C3419drawable.fork_topic_art_small);
            case 3:
                return new TopicInfo(C3417R.C3418color.topic_orange, C3417R.string.topics_title_astrology, C3417R.C3419drawable.fork_topic_astrology_small);
            case 4:
                return new TopicInfo(C3417R.C3418color.topic_dark_blue, C3417R.string.topics_title_auto, C3417R.C3419drawable.fork_topic_auto_small);
            case 5:
                return new TopicInfo(C3417R.C3418color.topic_orange, C3417R.string.topics_title_blogs, C3417R.C3419drawable.fork_topic_blogs_small);
            case 6:
                return new TopicInfo(C3417R.C3418color.topic_blue, C3417R.string.topics_title_books, C3417R.C3419drawable.fork_topic_books_small);
            case 7:
                return new TopicInfo(C3417R.C3418color.topic_orange, C3417R.string.topics_title_business, C3417R.C3419drawable.fork_topic_business_small);
            case 8:
                return new TopicInfo(C3417R.C3418color.topic_purple, C3417R.string.topics_title_crypto, C3417R.C3419drawable.fork_topic_crypto_small);
            case 9:
                return new TopicInfo(C3417R.C3418color.topic_green, C3417R.string.topics_title_design, C3417R.C3419drawable.fork_topic_design_small);
            case 10:
                return new TopicInfo(C3417R.C3418color.topic_light_blue, C3417R.string.topics_title_develop, C3417R.C3419drawable.fork_topic_develop_small);
            case 11:
                return new TopicInfo(C3417R.C3418color.topic_blue, C3417R.string.topics_title_economy, C3417R.C3419drawable.fork_topic_economy_small);
            case 12:
                return new TopicInfo(C3417R.C3418color.topic_blue, C3417R.string.topics_title_education, C3417R.C3419drawable.fork_topic_education_small);
            case 13:
                return new TopicInfo(C3417R.C3418color.topic_green, C3417R.string.topics_title_family, C3417R.C3419drawable.fork_topic_family_small);
            case 14:
                return new TopicInfo(C3417R.C3418color.topic_red, C3417R.string.topics_title_fashion, C3417R.C3419drawable.fork_topic_fashion_small);
            case 15:
                return new TopicInfo(C3417R.C3418color.topic_purple, C3417R.string.topics_title_films, C3417R.C3419drawable.fork_topic_films_small);
            case 16:
                return new TopicInfo(C3417R.C3418color.topic_blue, C3417R.string.topics_title_finance, C3417R.C3419drawable.fork_topic_finance_small);
            case 17:
                return new TopicInfo(C3417R.C3418color.topic_green, C3417R.string.topics_title_food, C3417R.C3419drawable.fork_topic_food_small);
            case 18:
                return new TopicInfo(C3417R.C3418color.topic_pink, C3417R.string.topics_title_friends, C3417R.C3419drawable.fork_topic_friends_small);
            case 19:
                return new TopicInfo(C3417R.C3418color.topic_dark_blue, C3417R.string.topics_title_games, C3417R.C3419drawable.fork_topic_games_small);
            case 20:
                return new TopicInfo(C3417R.C3418color.topic_purple, C3417R.string.topics_title_hobbies, C3417R.C3419drawable.fork_topic_hobbies_small);
            case 21:
                return new TopicInfo(C3417R.C3418color.topic_red, C3417R.string.topics_title_home, C3417R.C3419drawable.fork_topic_home_small);
            case 22:
                return new TopicInfo(C3417R.C3418color.topic_purple, C3417R.string.topics_title_humor, C3417R.C3419drawable.fork_topic_humor_small);
            case 23:
                return new TopicInfo(C3417R.C3418color.topic_blue, C3417R.string.topics_title_it, C3417R.C3419drawable.fork_topic_it_small);
            case 24:
                return new TopicInfo(C3417R.C3418color.topic_red, C3417R.string.topics_title_job, C3417R.C3419drawable.fork_topic_job_small);
            case 25:
                return new TopicInfo(C3417R.C3418color.topic_blue, C3417R.string.topics_title_laws, C3417R.C3419drawable.fork_topic_laws_small);
            case 26:
                return new TopicInfo(C3417R.C3418color.topic_purple, C3417R.string.topics_title_lifehack, C3417R.C3419drawable.fork_topic_lifehack_small);
            case 27:
                return new TopicInfo(C3417R.C3418color.topic_dark_blue, C3417R.string.topics_title_marketing, C3417R.C3419drawable.fork_topic_marketing_small);
            case 28:
                return new TopicInfo(C3417R.C3418color.topic_pink, C3417R.string.topics_title_medicine, C3417R.C3419drawable.fork_topic_medicine_small);
            case 29:
                return new TopicInfo(C3417R.C3418color.topic_yellow, C3417R.string.topics_title_music, C3417R.C3419drawable.fork_topic_music_small);
            case 30:
                return new TopicInfo(C3417R.C3418color.topic_pink, C3417R.string.topics_title_news, C3417R.C3419drawable.fork_topic_news_small);
            case 31:
                return new TopicInfo(C3417R.C3418color.topic_dark_blue, C3417R.string.topics_title_politics, C3417R.C3419drawable.fork_topic_politics_small);
            case 32:
                return new TopicInfo(C3417R.C3418color.topic_red, C3417R.string.topics_title_quotes, C3417R.C3419drawable.fork_topic_quotes_small);
            case 33:
                return new TopicInfo(C3417R.C3418color.topic_yellow, C3417R.string.topics_title_religion, C3417R.C3419drawable.fork_topic_religion_small);
            case 34:
                return new TopicInfo(C3417R.C3418color.topic_dark_blue, C3417R.string.topics_title_sales, C3417R.C3419drawable.fork_topic_sales_small);
            case 35:
                return new TopicInfo(C3417R.C3418color.topic_light_blue, C3417R.string.topics_title_science, C3417R.C3419drawable.fork_topic_science_small);
            case 36:
                return new TopicInfo(C3417R.C3418color.topic_dark_blue, C3417R.string.topics_title_sport, C3417R.C3419drawable.fork_topic_sport_small);
            case 37:
                return new TopicInfo(C3417R.C3418color.topic_purple, C3417R.string.topics_title_technology, C3417R.C3419drawable.fork_topic_technology_small);
            case 38:
                return new TopicInfo(C3417R.C3418color.topic_blue, C3417R.string.topics_title_telegram, C3417R.C3419drawable.fork_topic_telegram_small);
            case 39:
                return new TopicInfo(C3417R.C3418color.topic_dark_blue, C3417R.string.topics_title_travel, C3417R.C3419drawable.fork_topic_travel_small);
            case 40:
                return new TopicInfo(C3417R.C3418color.topic_purple, C3417R.string.topics_title_tv, C3417R.C3419drawable.fork_topic_tv_small);
            case 41:
                return new TopicInfo(C3417R.C3418color.topic_pink, C3417R.string.topics_title_adulthood, C3417R.C3419drawable.fork_topic_adulthood_small);
            case 42:
                return new TopicInfo(C3417R.C3418color.topic_purple, 0, C3417R.C3419drawable.fork_topic_bot);
            case 43:
                return new TopicInfo(C3417R.C3418color.topic_green, 0, C3417R.C3419drawable.fork_topic_calculator);
            case 44:
                return new TopicInfo(C3417R.C3418color.topic_pink, 0, C3417R.C3419drawable.fork_topic_beard);
            case 45:
                return new TopicInfo(C3417R.C3418color.topic_yellow, 0, C3417R.C3419drawable.fork_topic_chef);
            case 46:
                return new TopicInfo(C3417R.C3418color.topic_light_blue, 0, C3417R.C3419drawable.fork_topic_chess);
            case 47:
                return new TopicInfo(C3417R.C3418color.topic_green, 0, C3417R.C3419drawable.fork_topic_cloche);
            case 48:
                return new TopicInfo(C3417R.C3418color.topic_pink, 0, C3417R.C3419drawable.fork_topic_coffee);
            case 49:
                return new TopicInfo(C3417R.C3418color.topic_red, 0, C3417R.C3419drawable.fork_topic_colosseum);
            case 50:
                return new TopicInfo(C3417R.C3418color.topic_dark_blue, 0, C3417R.C3419drawable.fork_topic_cubes);
            case 51:
                return new TopicInfo(C3417R.C3418color.topic_light_blue, 0, C3417R.C3419drawable.fork_topic_flower);
            case 52:
                return new TopicInfo(C3417R.C3418color.topic_red, 0, C3417R.C3419drawable.fork_topic_funds);
            case 53:
                return new TopicInfo(C3417R.C3418color.topic_green, 0, C3417R.C3419drawable.fork_topic_shoe);
            case 54:
                return new TopicInfo(C3417R.C3418color.topic_light_blue, 0, C3417R.C3419drawable.fork_topic_palm);
            case 55:
                return new TopicInfo(C3417R.C3418color.topic_pink, 0, C3417R.C3419drawable.fork_topic_wand);
            case 56:
                return new TopicInfo(C3417R.C3418color.topic_yellow, 0, C3417R.C3419drawable.fork_topic_medal);
            case 57:
                return new TopicInfo(C3417R.C3418color.topic_pink, 0, C3417R.C3419drawable.fork_topic_mission);
            case 58:
                return new TopicInfo(C3417R.C3418color.topic_green, 0, C3417R.C3419drawable.fork_topic_pagoda);
            case 59:
                return new TopicInfo(C3417R.C3418color.topic_dark_blue, 0, C3417R.C3419drawable.fork_topic_pill);
            case 60:
                return new TopicInfo(C3417R.C3418color.topic_pink, 0, C3417R.C3419drawable.fork_topic_pingpong);
            case 61:
                return new TopicInfo(C3417R.C3418color.topic_yellow, 0, C3417R.C3419drawable.fork_topic_pizza);
            case 62:
                return new TopicInfo(C3417R.C3418color.topic_pink, 0, C3417R.C3419drawable.fork_topic_rocket);
            case 63:
                return new TopicInfo(C3417R.C3418color.topic_purple, 0, C3417R.C3419drawable.fork_topic_ufo);
            case 64:
                return new TopicInfo(C3417R.C3418color.topic_light_blue, 0, C3417R.C3419drawable.fork_topic_duck);
            case 65:
                return new TopicInfo(C3417R.C3418color.topic_red, 0, C3417R.C3419drawable.fork_topic_scissors);
            case 66:
                return new TopicInfo(C3417R.C3418color.topic_green, 0, C3417R.C3419drawable.fork_topic_melon);
            case 67:
                return new TopicInfo(C3417R.C3418color.topic_pink, 0, C3417R.C3419drawable.fork_topic_sun);
            case 68:
                return new TopicInfo(C3417R.C3418color.topic_dark_blue, 0, C3417R.C3419drawable.fork_topic_darts);
            case 69:
                return new TopicInfo(C3417R.C3418color.topic_purple, 0, C3417R.C3419drawable.fork_topic_trophy);
            case 70:
                return new TopicInfo(C3417R.C3418color.topic_yellow, 0, C3417R.C3419drawable.fork_topic_umbrella);
            case 71:
                return new TopicInfo(C3417R.C3418color.topic_red, 0, C3417R.C3419drawable.fork_topic_glasses);
            case 72:
                return new TopicInfo(C3417R.C3418color.topic_yellow, C3417R.string.topics_title_other, C3417R.C3419drawable.fork_topic_other_small);
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
