package com.smedialink.utils.extentions.model.topic;

import com.smedialink.p031ui.topics.TopicInfo;
import com.smedialink.storage.data.repository.topics.Topic;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3158R;
/* compiled from: TopicExt.kt */
/* loaded from: classes3.dex */
public final class TopicExtKt {

    /* compiled from: TopicExt.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Topic.values().length];
            iArr[Topic.ANIMALS.ordinal()] = 1;
            iArr[Topic.ART.ordinal()] = 2;
            iArr[Topic.ASTROLOGY.ordinal()] = 3;
            iArr[Topic.AUTO.ordinal()] = 4;
            iArr[Topic.BLOGS.ordinal()] = 5;
            iArr[Topic.BOOKS.ordinal()] = 6;
            iArr[Topic.BUSINESS.ordinal()] = 7;
            iArr[Topic.CRYPTO.ordinal()] = 8;
            iArr[Topic.DESIGN.ordinal()] = 9;
            iArr[Topic.DEVELOP.ordinal()] = 10;
            iArr[Topic.ECONOMY.ordinal()] = 11;
            iArr[Topic.EDUCATION.ordinal()] = 12;
            iArr[Topic.FAMILY.ordinal()] = 13;
            iArr[Topic.FASHION.ordinal()] = 14;
            iArr[Topic.FILMS.ordinal()] = 15;
            iArr[Topic.FINANCE.ordinal()] = 16;
            iArr[Topic.FOOD.ordinal()] = 17;
            iArr[Topic.FRIENDS.ordinal()] = 18;
            iArr[Topic.GAMES.ordinal()] = 19;
            iArr[Topic.HOBBIES.ordinal()] = 20;
            iArr[Topic.HOME.ordinal()] = 21;
            iArr[Topic.HUMOR.ordinal()] = 22;
            iArr[Topic.f308IT.ordinal()] = 23;
            iArr[Topic.JOB.ordinal()] = 24;
            iArr[Topic.LAWS.ordinal()] = 25;
            iArr[Topic.LIFEHACK.ordinal()] = 26;
            iArr[Topic.MARKETING.ordinal()] = 27;
            iArr[Topic.MEDICINE.ordinal()] = 28;
            iArr[Topic.MUSIC.ordinal()] = 29;
            iArr[Topic.NEWS.ordinal()] = 30;
            iArr[Topic.POLITICS.ordinal()] = 31;
            iArr[Topic.QUOTES.ordinal()] = 32;
            iArr[Topic.RELIGION.ordinal()] = 33;
            iArr[Topic.SALES.ordinal()] = 34;
            iArr[Topic.SCIENCE.ordinal()] = 35;
            iArr[Topic.SPORT.ordinal()] = 36;
            iArr[Topic.TECHNOLOGY.ordinal()] = 37;
            iArr[Topic.TELEGRAM.ordinal()] = 38;
            iArr[Topic.TRAVEL.ordinal()] = 39;
            iArr[Topic.f309TV.ordinal()] = 40;
            iArr[Topic.ADULTHOOD.ordinal()] = 41;
            iArr[Topic.BOT.ordinal()] = 42;
            iArr[Topic.CALCULATOR.ordinal()] = 43;
            iArr[Topic.BEARD.ordinal()] = 44;
            iArr[Topic.CHEF.ordinal()] = 45;
            iArr[Topic.CHESS.ordinal()] = 46;
            iArr[Topic.CLOCHE.ordinal()] = 47;
            iArr[Topic.COFFEE.ordinal()] = 48;
            iArr[Topic.COLOSSEUM.ordinal()] = 49;
            iArr[Topic.CUBES.ordinal()] = 50;
            iArr[Topic.FLOWER.ordinal()] = 51;
            iArr[Topic.FUNDS.ordinal()] = 52;
            iArr[Topic.SHOE.ordinal()] = 53;
            iArr[Topic.PALM.ordinal()] = 54;
            iArr[Topic.WAND.ordinal()] = 55;
            iArr[Topic.MEDAL.ordinal()] = 56;
            iArr[Topic.MISSION.ordinal()] = 57;
            iArr[Topic.PAGODA.ordinal()] = 58;
            iArr[Topic.PILL.ordinal()] = 59;
            iArr[Topic.PINGPONG.ordinal()] = 60;
            iArr[Topic.PIZZA.ordinal()] = 61;
            iArr[Topic.ROCKET.ordinal()] = 62;
            iArr[Topic.UFO.ordinal()] = 63;
            iArr[Topic.DUCK.ordinal()] = 64;
            iArr[Topic.SCISSORS.ordinal()] = 65;
            iArr[Topic.MELON.ordinal()] = 66;
            iArr[Topic.SUN.ordinal()] = 67;
            iArr[Topic.DARTS.ordinal()] = 68;
            iArr[Topic.TROPHY.ordinal()] = 69;
            iArr[Topic.UMBRELLA.ordinal()] = 70;
            iArr[Topic.GLASSES.ordinal()] = 71;
            iArr[Topic.OTHER.ordinal()] = 72;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final TopicInfo info(Topic topic) {
        Intrinsics.checkNotNullParameter(topic, "<this>");
        switch (WhenMappings.$EnumSwitchMapping$0[topic.ordinal()]) {
            case 1:
                return new TopicInfo(C3158R.C3159color.topic_green, C3158R.string.topics_title_animals, C3158R.C3160drawable.fork_topic_animals_small);
            case 2:
                return new TopicInfo(C3158R.C3159color.topic_orange, C3158R.string.topics_title_art, C3158R.C3160drawable.fork_topic_art_small);
            case 3:
                return new TopicInfo(C3158R.C3159color.topic_orange, C3158R.string.topics_title_astrology, C3158R.C3160drawable.fork_topic_astrology_small);
            case 4:
                return new TopicInfo(C3158R.C3159color.topic_dark_blue, C3158R.string.topics_title_auto, C3158R.C3160drawable.fork_topic_auto_small);
            case 5:
                return new TopicInfo(C3158R.C3159color.topic_orange, C3158R.string.topics_title_blogs, C3158R.C3160drawable.fork_topic_blogs_small);
            case 6:
                return new TopicInfo(C3158R.C3159color.topic_blue, C3158R.string.topics_title_books, C3158R.C3160drawable.fork_topic_books_small);
            case 7:
                return new TopicInfo(C3158R.C3159color.topic_orange, C3158R.string.topics_title_business, C3158R.C3160drawable.fork_topic_business_small);
            case 8:
                return new TopicInfo(C3158R.C3159color.topic_purple, C3158R.string.topics_title_crypto, C3158R.C3160drawable.fork_topic_crypto_small);
            case 9:
                return new TopicInfo(C3158R.C3159color.topic_green, C3158R.string.topics_title_design, C3158R.C3160drawable.fork_topic_design_small);
            case 10:
                return new TopicInfo(C3158R.C3159color.topic_light_blue, C3158R.string.topics_title_develop, C3158R.C3160drawable.fork_topic_develop_small);
            case 11:
                return new TopicInfo(C3158R.C3159color.topic_blue, C3158R.string.topics_title_economy, C3158R.C3160drawable.fork_topic_economy_small);
            case 12:
                return new TopicInfo(C3158R.C3159color.topic_blue, C3158R.string.topics_title_education, C3158R.C3160drawable.fork_topic_education_small);
            case 13:
                return new TopicInfo(C3158R.C3159color.topic_green, C3158R.string.topics_title_family, C3158R.C3160drawable.fork_topic_family_small);
            case 14:
                return new TopicInfo(C3158R.C3159color.topic_red, C3158R.string.topics_title_fashion, C3158R.C3160drawable.fork_topic_fashion_small);
            case 15:
                return new TopicInfo(C3158R.C3159color.topic_purple, C3158R.string.topics_title_films, C3158R.C3160drawable.fork_topic_films_small);
            case 16:
                return new TopicInfo(C3158R.C3159color.topic_blue, C3158R.string.topics_title_finance, C3158R.C3160drawable.fork_topic_finance_small);
            case 17:
                return new TopicInfo(C3158R.C3159color.topic_green, C3158R.string.topics_title_food, C3158R.C3160drawable.fork_topic_food_small);
            case 18:
                return new TopicInfo(C3158R.C3159color.topic_pink, C3158R.string.topics_title_friends, C3158R.C3160drawable.fork_topic_friends_small);
            case 19:
                return new TopicInfo(C3158R.C3159color.topic_dark_blue, C3158R.string.topics_title_games, C3158R.C3160drawable.fork_topic_games_small);
            case 20:
                return new TopicInfo(C3158R.C3159color.topic_purple, C3158R.string.topics_title_hobbies, C3158R.C3160drawable.fork_topic_hobbies_small);
            case 21:
                return new TopicInfo(C3158R.C3159color.topic_red, C3158R.string.topics_title_home, C3158R.C3160drawable.fork_topic_home_small);
            case 22:
                return new TopicInfo(C3158R.C3159color.topic_purple, C3158R.string.topics_title_humor, C3158R.C3160drawable.fork_topic_humor_small);
            case 23:
                return new TopicInfo(C3158R.C3159color.topic_blue, C3158R.string.topics_title_it, C3158R.C3160drawable.fork_topic_it_small);
            case 24:
                return new TopicInfo(C3158R.C3159color.topic_red, C3158R.string.topics_title_job, C3158R.C3160drawable.fork_topic_job_small);
            case 25:
                return new TopicInfo(C3158R.C3159color.topic_blue, C3158R.string.topics_title_laws, C3158R.C3160drawable.fork_topic_laws_small);
            case 26:
                return new TopicInfo(C3158R.C3159color.topic_purple, C3158R.string.topics_title_lifehack, C3158R.C3160drawable.fork_topic_lifehack_small);
            case 27:
                return new TopicInfo(C3158R.C3159color.topic_dark_blue, C3158R.string.topics_title_marketing, C3158R.C3160drawable.fork_topic_marketing_small);
            case 28:
                return new TopicInfo(C3158R.C3159color.topic_pink, C3158R.string.topics_title_medicine, C3158R.C3160drawable.fork_topic_medicine_small);
            case 29:
                return new TopicInfo(C3158R.C3159color.topic_yellow, C3158R.string.topics_title_music, C3158R.C3160drawable.fork_topic_music_small);
            case 30:
                return new TopicInfo(C3158R.C3159color.topic_pink, C3158R.string.topics_title_news, C3158R.C3160drawable.fork_topic_news_small);
            case 31:
                return new TopicInfo(C3158R.C3159color.topic_dark_blue, C3158R.string.topics_title_politics, C3158R.C3160drawable.fork_topic_politics_small);
            case 32:
                return new TopicInfo(C3158R.C3159color.topic_red, C3158R.string.topics_title_quotes, C3158R.C3160drawable.fork_topic_quotes_small);
            case 33:
                return new TopicInfo(C3158R.C3159color.topic_yellow, C3158R.string.topics_title_religion, C3158R.C3160drawable.fork_topic_religion_small);
            case 34:
                return new TopicInfo(C3158R.C3159color.topic_dark_blue, C3158R.string.topics_title_sales, C3158R.C3160drawable.fork_topic_sales_small);
            case 35:
                return new TopicInfo(C3158R.C3159color.topic_light_blue, C3158R.string.topics_title_science, C3158R.C3160drawable.fork_topic_science_small);
            case 36:
                return new TopicInfo(C3158R.C3159color.topic_dark_blue, C3158R.string.topics_title_sport, C3158R.C3160drawable.fork_topic_sport_small);
            case 37:
                return new TopicInfo(C3158R.C3159color.topic_purple, C3158R.string.topics_title_technology, C3158R.C3160drawable.fork_topic_technology_small);
            case 38:
                return new TopicInfo(C3158R.C3159color.topic_blue, C3158R.string.topics_title_telegram, C3158R.C3160drawable.fork_topic_telegram_small);
            case 39:
                return new TopicInfo(C3158R.C3159color.topic_dark_blue, C3158R.string.topics_title_travel, C3158R.C3160drawable.fork_topic_travel_small);
            case 40:
                return new TopicInfo(C3158R.C3159color.topic_purple, C3158R.string.topics_title_tv, C3158R.C3160drawable.fork_topic_tv_small);
            case 41:
                return new TopicInfo(C3158R.C3159color.topic_pink, C3158R.string.topics_title_adulthood, C3158R.C3160drawable.fork_topic_adulthood_small);
            case 42:
                return new TopicInfo(C3158R.C3159color.topic_purple, 0, C3158R.C3160drawable.fork_topic_bot);
            case 43:
                return new TopicInfo(C3158R.C3159color.topic_green, 0, C3158R.C3160drawable.fork_topic_calculator);
            case 44:
                return new TopicInfo(C3158R.C3159color.topic_pink, 0, C3158R.C3160drawable.fork_topic_beard);
            case 45:
                return new TopicInfo(C3158R.C3159color.topic_yellow, 0, C3158R.C3160drawable.fork_topic_chef);
            case 46:
                return new TopicInfo(C3158R.C3159color.topic_light_blue, 0, C3158R.C3160drawable.fork_topic_chess);
            case 47:
                return new TopicInfo(C3158R.C3159color.topic_green, 0, C3158R.C3160drawable.fork_topic_cloche);
            case 48:
                return new TopicInfo(C3158R.C3159color.topic_pink, 0, C3158R.C3160drawable.fork_topic_coffee);
            case 49:
                return new TopicInfo(C3158R.C3159color.topic_red, 0, C3158R.C3160drawable.fork_topic_colosseum);
            case 50:
                return new TopicInfo(C3158R.C3159color.topic_dark_blue, 0, C3158R.C3160drawable.fork_topic_cubes);
            case 51:
                return new TopicInfo(C3158R.C3159color.topic_light_blue, 0, C3158R.C3160drawable.fork_topic_flower);
            case 52:
                return new TopicInfo(C3158R.C3159color.topic_red, 0, C3158R.C3160drawable.fork_topic_funds);
            case 53:
                return new TopicInfo(C3158R.C3159color.topic_green, 0, C3158R.C3160drawable.fork_topic_shoe);
            case 54:
                return new TopicInfo(C3158R.C3159color.topic_light_blue, 0, C3158R.C3160drawable.fork_topic_palm);
            case 55:
                return new TopicInfo(C3158R.C3159color.topic_pink, 0, C3158R.C3160drawable.fork_topic_wand);
            case 56:
                return new TopicInfo(C3158R.C3159color.topic_yellow, 0, C3158R.C3160drawable.fork_topic_medal);
            case 57:
                return new TopicInfo(C3158R.C3159color.topic_pink, 0, C3158R.C3160drawable.fork_topic_mission);
            case 58:
                return new TopicInfo(C3158R.C3159color.topic_green, 0, C3158R.C3160drawable.fork_topic_pagoda);
            case 59:
                return new TopicInfo(C3158R.C3159color.topic_dark_blue, 0, C3158R.C3160drawable.fork_topic_pill);
            case 60:
                return new TopicInfo(C3158R.C3159color.topic_pink, 0, C3158R.C3160drawable.fork_topic_pingpong);
            case 61:
                return new TopicInfo(C3158R.C3159color.topic_yellow, 0, C3158R.C3160drawable.fork_topic_pizza);
            case 62:
                return new TopicInfo(C3158R.C3159color.topic_pink, 0, C3158R.C3160drawable.fork_topic_rocket);
            case 63:
                return new TopicInfo(C3158R.C3159color.topic_purple, 0, C3158R.C3160drawable.fork_topic_ufo);
            case 64:
                return new TopicInfo(C3158R.C3159color.topic_light_blue, 0, C3158R.C3160drawable.fork_topic_duck);
            case 65:
                return new TopicInfo(C3158R.C3159color.topic_red, 0, C3158R.C3160drawable.fork_topic_scissors);
            case 66:
                return new TopicInfo(C3158R.C3159color.topic_green, 0, C3158R.C3160drawable.fork_topic_melon);
            case 67:
                return new TopicInfo(C3158R.C3159color.topic_pink, 0, C3158R.C3160drawable.fork_topic_sun);
            case 68:
                return new TopicInfo(C3158R.C3159color.topic_dark_blue, 0, C3158R.C3160drawable.fork_topic_darts);
            case 69:
                return new TopicInfo(C3158R.C3159color.topic_purple, 0, C3158R.C3160drawable.fork_topic_trophy);
            case 70:
                return new TopicInfo(C3158R.C3159color.topic_yellow, 0, C3158R.C3160drawable.fork_topic_umbrella);
            case 71:
                return new TopicInfo(C3158R.C3159color.topic_red, 0, C3158R.C3160drawable.fork_topic_glasses);
            case 72:
                return new TopicInfo(C3158R.C3159color.topic_yellow, C3158R.string.topics_title_other, C3158R.C3160drawable.fork_topic_other_small);
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
