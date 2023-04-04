package com.iMe.bots;

import java.util.List;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
/* compiled from: BotConstants.kt */
/* loaded from: classes3.dex */
public final class BotConstants {
    public static final BotConstants INSTANCE = new BotConstants();
    private static final Map<String, String> hashes;
    private static final List<String> predefinedBots;

    private BotConstants() {
    }

    public final List<String> getPredefinedBots() {
        return predefinedBots;
    }

    static {
        List<String> listOf;
        Map<String, String> mapOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"assistant", "assistant_eng", "holidays"});
        predefinedBots = listOf;
        mapOf = MapsKt__MapsKt.mapOf(TuplesKt.m94to("assistant", "KrEBEAPGadlvWF8morbTTQ=="), TuplesKt.m94to("assistant_eng", "IOMbdDggW8S3hqQtm7xyPg=="), TuplesKt.m94to("holidays", "U1lmtBOVs9cLAyTMzDkQSA=="));
        hashes = mapOf;
    }

    public final Map<String, String> getHashes() {
        return hashes;
    }
}
