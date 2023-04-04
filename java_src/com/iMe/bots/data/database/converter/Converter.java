package com.iMe.bots.data.database.converter;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.iMe.bots.data.model.BotStatus;
import com.iMe.bots.data.model.BotType;
import com.iMe.bots.domain.model.BotLanguage;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Converter.kt */
/* loaded from: classes3.dex */
public final class Converter {
    public static final Companion Companion = new Companion(null);
    private static final Gson gson = new Gson();

    public static final Long fromDate(Date date) {
        return Companion.fromDate(date);
    }

    public static final String fromMap(Map<String, String> map) {
        return Companion.fromMap(map);
    }

    public static final List<String> fromString(String str) {
        return Companion.fromString(str);
    }

    public static final String fromStrings(List<String> list) {
        return Companion.fromStrings(list);
    }

    public static final Date fromTimeStamp(Long l) {
        return Companion.fromTimeStamp(l);
    }

    public static final BotLanguage toBotLanguage(String str) {
        return Companion.toBotLanguage(str);
    }

    public static final BotStatus toBotsDbModelStatus(String str) {
        return Companion.toBotsDbModelStatus(str);
    }

    public static final BotType toBotsDbModelType(String str) {
        return Companion.toBotsDbModelType(str);
    }

    public static final Map<String, String> toMap(String str) {
        return Companion.toMap(str);
    }

    public static final String toString(BotStatus botStatus) {
        return Companion.toString(botStatus);
    }

    public static final String toString(BotType botType) {
        return Companion.toString(botType);
    }

    public static final String toString(BotLanguage botLanguage) {
        return Companion.toString(botLanguage);
    }

    /* compiled from: Converter.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final BotStatus toBotsDbModelStatus(String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            return BotStatus.Companion.resolve(name);
        }

        public final String toString(BotStatus type) {
            Intrinsics.checkNotNullParameter(type, "type");
            return type.name();
        }

        public final BotType toBotsDbModelType(String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            return BotType.Companion.resolveByName(name);
        }

        public final String toString(BotLanguage botLanguage) {
            Intrinsics.checkNotNullParameter(botLanguage, "botLanguage");
            return botLanguage.getLangCode();
        }

        public final BotLanguage toBotLanguage(String languageCode) {
            Intrinsics.checkNotNullParameter(languageCode, "languageCode");
            return BotLanguage.Companion.fromValue(languageCode);
        }

        public final String toString(BotType type) {
            Intrinsics.checkNotNullParameter(type, "type");
            return type.name();
        }

        public final String fromStrings(List<String> list) {
            String json = Converter.gson.toJson(list);
            Intrinsics.checkNotNullExpressionValue(json, "gson.toJson(value)");
            return json;
        }

        public final List<String> fromString(String str) {
            List<String> emptyList;
            List<String> list = str != null ? (List) Converter.gson.fromJson(str, new TypeToken<ArrayList<String>>() { // from class: com.iMe.bots.data.database.converter.Converter$Companion$fromString$listType$1
            }.getType()) : null;
            if (list == null) {
                emptyList = CollectionsKt__CollectionsKt.emptyList();
                return emptyList;
            }
            return list;
        }

        public final Date fromTimeStamp(Long l) {
            if (l != null) {
                return new Date(l.longValue());
            }
            return null;
        }

        public final Long fromDate(Date date) {
            if (date != null) {
                return Long.valueOf(date.getTime());
            }
            return null;
        }

        public final String fromMap(Map<String, String> map) {
            String json = Converter.gson.toJson(map);
            Intrinsics.checkNotNullExpressionValue(json, "gson.toJson(value)");
            return json;
        }

        public final Map<String, String> toMap(String str) {
            Map<String, String> emptyMap;
            Map<String, String> map = str != null ? (Map) Converter.gson.fromJson(str, new TypeToken<Map<String, ? extends String>>() { // from class: com.iMe.bots.data.database.converter.Converter$Companion$toMap$listType$1
            }.getType()) : null;
            if (map == null) {
                emptyMap = MapsKt__MapsKt.emptyMap();
                return emptyMap;
            }
            return map;
        }
    }
}
