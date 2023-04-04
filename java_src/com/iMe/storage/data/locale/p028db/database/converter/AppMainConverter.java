package com.iMe.storage.data.locale.p028db.database.converter;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AppMainConverter.kt */
/* renamed from: com.iMe.storage.data.locale.db.database.converter.AppMainConverter */
/* loaded from: classes3.dex */
public final class AppMainConverter {
    public static final Companion Companion = new Companion(null);
    private static final Gson gson = new Gson();

    public static final String convertIntListToString(List<Integer> list) {
        return Companion.convertIntListToString(list);
    }

    public static final String convertLongListToString(List<Long> list) {
        return Companion.convertLongListToString(list);
    }

    public static final List<Integer> convertStringToIntList(String str) {
        return Companion.convertStringToIntList(str);
    }

    public static final List<Long> convertStringToLongList(String str) {
        return Companion.convertStringToLongList(str);
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

        public final List<Long> convertStringToLongList(String str) {
            Intrinsics.checkNotNullParameter(str, "str");
            return (List) AppMainConverter.gson.fromJson(str, new TypeToken<List<Long>>() { // from class: com.iMe.storage.data.locale.db.database.converter.AppMainConverter$Companion$convertStringToLongList$$inlined$fromJsonTokenType$1
            }.getType());
        }

        public final String convertLongListToString(List<Long> list) {
            Intrinsics.checkNotNullParameter(list, "list");
            String json = AppMainConverter.gson.toJson(list);
            Intrinsics.checkNotNullExpressionValue(json, "gson.toJson(list)");
            return json;
        }

        public final List<Integer> convertStringToIntList(String str) {
            Intrinsics.checkNotNullParameter(str, "str");
            return (List) AppMainConverter.gson.fromJson(str, new TypeToken<List<Integer>>() { // from class: com.iMe.storage.data.locale.db.database.converter.AppMainConverter$Companion$convertStringToIntList$$inlined$fromJsonTokenType$1
            }.getType());
        }

        public final String convertIntListToString(List<Integer> list) {
            Intrinsics.checkNotNullParameter(list, "list");
            String json = AppMainConverter.gson.toJson(list);
            Intrinsics.checkNotNullExpressionValue(json, "gson.toJson(list)");
            return json;
        }
    }
}
