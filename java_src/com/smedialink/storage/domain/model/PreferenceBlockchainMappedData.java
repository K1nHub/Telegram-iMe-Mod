package com.smedialink.storage.domain.model;

import android.content.SharedPreferences;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.smedialink.storage.domain.model.crypto.BlockchainType;
import java.util.Map;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: PreferenceBlockchainMappedData.kt */
/* loaded from: classes3.dex */
public final class PreferenceBlockchainMappedData<V> {
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
    public static /* synthetic */ PreferenceBlockchainMappedData copy$default(PreferenceBlockchainMappedData preferenceBlockchainMappedData, Gson gson, SharedPreferences sharedPreferences, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            gson = preferenceBlockchainMappedData.gson;
        }
        if ((i & 2) != 0) {
            sharedPreferences = preferenceBlockchainMappedData.prefs;
        }
        if ((i & 4) != 0) {
            function0 = preferenceBlockchainMappedData.preferenceKeyGetter;
        }
        return preferenceBlockchainMappedData.copy(gson, sharedPreferences, function0);
    }

    public final PreferenceBlockchainMappedData<V> copy(Gson gson, SharedPreferences prefs, Function0<String> preferenceKeyGetter) {
        Intrinsics.checkNotNullParameter(gson, "gson");
        Intrinsics.checkNotNullParameter(prefs, "prefs");
        Intrinsics.checkNotNullParameter(preferenceKeyGetter, "preferenceKeyGetter");
        return new PreferenceBlockchainMappedData<>(gson, prefs, preferenceKeyGetter);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PreferenceBlockchainMappedData) {
            PreferenceBlockchainMappedData preferenceBlockchainMappedData = (PreferenceBlockchainMappedData) obj;
            return Intrinsics.areEqual(this.gson, preferenceBlockchainMappedData.gson) && Intrinsics.areEqual(this.prefs, preferenceBlockchainMappedData.prefs) && Intrinsics.areEqual(this.preferenceKeyGetter, preferenceBlockchainMappedData.preferenceKeyGetter);
        }
        return false;
    }

    public int hashCode() {
        return (((this.gson.hashCode() * 31) + this.prefs.hashCode()) * 31) + this.preferenceKeyGetter.hashCode();
    }

    public String toString() {
        return "PreferenceBlockchainMappedData(gson=" + this.gson + ", prefs=" + this.prefs + ", preferenceKeyGetter=" + this.preferenceKeyGetter + ')';
    }

    public PreferenceBlockchainMappedData(Gson gson, SharedPreferences prefs, Function0<String> preferenceKeyGetter) {
        Intrinsics.checkNotNullParameter(gson, "gson");
        Intrinsics.checkNotNullParameter(prefs, "prefs");
        Intrinsics.checkNotNullParameter(preferenceKeyGetter, "preferenceKeyGetter");
        this.gson = gson;
        this.prefs = prefs;
        this.preferenceKeyGetter = preferenceKeyGetter;
    }

    public final Map<String, V> getData() {
        Gson gson = this.gson;
        String string = this.prefs.getString(this.preferenceKeyGetter.invoke(), "[]");
        if (string == null) {
            string = "";
        }
        return (Map) gson.fromJson(string, new TypeToken<Map<String, ? extends V>>() { // from class: com.smedialink.storage.domain.model.PreferenceBlockchainMappedData$special$$inlined$fromJsonTokenType$1
        }.getType());
    }

    public final V getDataByBlockchain(BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        return getData().get(blockchainType.name());
    }

    public final void put(BlockchainType key, V v) {
        Map mutableMap;
        Intrinsics.checkNotNullParameter(key, "key");
        mutableMap = MapsKt__MapsKt.toMutableMap(getData());
        mutableMap.put(key.name(), v);
        this.prefs.edit().putString(this.preferenceKeyGetter.invoke(), this.gson.toJson(mutableMap)).apply();
    }

    public final void remove(BlockchainType key) {
        Map mutableMap;
        Intrinsics.checkNotNullParameter(key, "key");
        mutableMap = MapsKt__MapsKt.toMutableMap(getData());
        mutableMap.remove(key.name());
        this.prefs.edit().putString(this.preferenceKeyGetter.invoke(), this.gson.toJson(mutableMap)).apply();
    }
}
