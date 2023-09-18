package com.iMe.storage.domain.model.twitter;

import android.content.SharedPreferences;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.Map;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: PreferenceTwitterTelegramIdMappedData.kt */
/* loaded from: classes4.dex */
public final class PreferenceTwitterTelegramIdMappedData {
    private final Gson gson;
    private final Function0<String> preferenceKeyGetter;
    private final SharedPreferences prefs;

    private final Gson component1() {
        return this.gson;
    }

    private final SharedPreferences component2() {
        return this.prefs;
    }

    private final Function0<String> component3() {
        return this.preferenceKeyGetter;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PreferenceTwitterTelegramIdMappedData copy$default(PreferenceTwitterTelegramIdMappedData preferenceTwitterTelegramIdMappedData, Gson gson, SharedPreferences sharedPreferences, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            gson = preferenceTwitterTelegramIdMappedData.gson;
        }
        if ((i & 2) != 0) {
            sharedPreferences = preferenceTwitterTelegramIdMappedData.prefs;
        }
        if ((i & 4) != 0) {
            function0 = preferenceTwitterTelegramIdMappedData.preferenceKeyGetter;
        }
        return preferenceTwitterTelegramIdMappedData.copy(gson, sharedPreferences, function0);
    }

    public final PreferenceTwitterTelegramIdMappedData copy(Gson gson, SharedPreferences prefs, Function0<String> preferenceKeyGetter) {
        Intrinsics.checkNotNullParameter(gson, "gson");
        Intrinsics.checkNotNullParameter(prefs, "prefs");
        Intrinsics.checkNotNullParameter(preferenceKeyGetter, "preferenceKeyGetter");
        return new PreferenceTwitterTelegramIdMappedData(gson, prefs, preferenceKeyGetter);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PreferenceTwitterTelegramIdMappedData) {
            PreferenceTwitterTelegramIdMappedData preferenceTwitterTelegramIdMappedData = (PreferenceTwitterTelegramIdMappedData) obj;
            return Intrinsics.areEqual(this.gson, preferenceTwitterTelegramIdMappedData.gson) && Intrinsics.areEqual(this.prefs, preferenceTwitterTelegramIdMappedData.prefs) && Intrinsics.areEqual(this.preferenceKeyGetter, preferenceTwitterTelegramIdMappedData.preferenceKeyGetter);
        }
        return false;
    }

    public int hashCode() {
        return (((this.gson.hashCode() * 31) + this.prefs.hashCode()) * 31) + this.preferenceKeyGetter.hashCode();
    }

    public String toString() {
        return "PreferenceTwitterTelegramIdMappedData(gson=" + this.gson + ", prefs=" + this.prefs + ", preferenceKeyGetter=" + this.preferenceKeyGetter + ')';
    }

    public PreferenceTwitterTelegramIdMappedData(Gson gson, SharedPreferences prefs, Function0<String> preferenceKeyGetter) {
        Intrinsics.checkNotNullParameter(gson, "gson");
        Intrinsics.checkNotNullParameter(prefs, "prefs");
        Intrinsics.checkNotNullParameter(preferenceKeyGetter, "preferenceKeyGetter");
        this.gson = gson;
        this.prefs = prefs;
        this.preferenceKeyGetter = preferenceKeyGetter;
    }

    private final Map<Long, TwitterAccountData> getData() {
        Gson gson = this.gson;
        String string = this.prefs.getString(this.preferenceKeyGetter.invoke(), "[]");
        if (string == null) {
            string = "";
        }
        return (Map) gson.fromJson(string, new TypeToken<Map<Long, ? extends TwitterAccountData>>() { // from class: com.iMe.storage.domain.model.twitter.PreferenceTwitterTelegramIdMappedData$special$$inlined$fromJsonTokenType$1
        }.getType());
    }

    public final TwitterAccountData getDataByTelegramId(long j) {
        return getData().get(Long.valueOf(j));
    }

    public final void put(long j, TwitterAccountData value) {
        Map mutableMap;
        Intrinsics.checkNotNullParameter(value, "value");
        mutableMap = MapsKt__MapsKt.toMutableMap(getData());
        mutableMap.put(Long.valueOf(j), value);
        this.prefs.edit().putString(this.preferenceKeyGetter.invoke(), this.gson.toJson(mutableMap)).apply();
    }

    public final void remove(long j) {
        Map mutableMap;
        mutableMap = MapsKt__MapsKt.toMutableMap(getData());
        mutableMap.remove(Long.valueOf(j));
        this.prefs.edit().putString(this.preferenceKeyGetter.invoke(), this.gson.toJson(mutableMap)).apply();
    }
}
