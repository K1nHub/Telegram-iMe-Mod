package com.iMe.storage.data.locale.p026db.database.converter;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.Date;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AppMainConverter.kt */
/* renamed from: com.iMe.storage.data.locale.db.database.converter.AppMainConverter */
/* loaded from: classes3.dex */
public final class AppMainConverter {
    public static final Companion Companion = new Companion(null);
    private static final Gson gson = new Gson();

    public static final Long convertDateToLong(Date date) {
        return Companion.convertDateToLong(date);
    }

    public static final String convertIntListToString(List<Integer> list) {
        return Companion.convertIntListToString(list);
    }

    public static final String convertLongListToString(List<Long> list) {
        return Companion.convertLongListToString(list);
    }

    public static final Date convertLongToDate(Long l) {
        return Companion.convertLongToDate(l);
    }

    public static final String convertStringListToString(List<String> list) {
        return Companion.convertStringListToString(list);
    }

    public static final List<Integer> convertStringToIntList(String str) {
        return Companion.convertStringToIntList(str);
    }

    public static final List<Long> convertStringToLongList(String str) {
        return Companion.convertStringToLongList(str);
    }

    public static final List<String> convertStringToStringList(String str) {
        return Companion.convertStringToStringList(str);
    }

    /* compiled from: AppMainConverter.kt */
    /* renamed from: com.iMe.storage.data.locale.db.database.converter.AppMainConverter$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List<Long> convertStringToLongList(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return (List) AppMainConverter.gson.fromJson(value, new TypeToken<List<Long>>() { // from class: com.iMe.storage.data.locale.db.database.converter.AppMainConverter$Companion$convertStringToLongList$$inlined$fromJsonTokenType$1
            }.getType());
        }

        public final String convertLongListToString(List<Long> value) {
            Intrinsics.checkNotNullParameter(value, "value");
            String json = AppMainConverter.gson.toJson(value);
            Intrinsics.checkNotNullExpressionValue(json, "gson.toJson(value)");
            return json;
        }

        public final List<Integer> convertStringToIntList(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return (List) AppMainConverter.gson.fromJson(value, new TypeToken<List<Integer>>() { // from class: com.iMe.storage.data.locale.db.database.converter.AppMainConverter$Companion$convertStringToIntList$$inlined$fromJsonTokenType$1
            }.getType());
        }

        public final String convertIntListToString(List<Integer> value) {
            Intrinsics.checkNotNullParameter(value, "value");
            String json = AppMainConverter.gson.toJson(value);
            Intrinsics.checkNotNullExpressionValue(json, "gson.toJson(value)");
            return json;
        }

        public final List<String> convertStringToStringList(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return (List) AppMainConverter.gson.fromJson(value, new TypeToken<List<? extends String>>() { // from class: com.iMe.storage.data.locale.db.database.converter.AppMainConverter$Companion$convertStringToStringList$$inlined$fromJsonTokenType$1
            }.getType());
        }

        public final String convertStringListToString(List<String> list) {
            String json = AppMainConverter.gson.toJson(list);
            Intrinsics.checkNotNullExpressionValue(json, "gson.toJson(value)");
            return json;
        }

        public final Date convertLongToDate(Long l) {
            if (l != null) {
                return new Date(l.longValue());
            }
            return null;
        }

        public final Long convertDateToLong(Date date) {
            if (date != null) {
                return Long.valueOf(date.getTime());
            }
            return null;
        }
    }
}
