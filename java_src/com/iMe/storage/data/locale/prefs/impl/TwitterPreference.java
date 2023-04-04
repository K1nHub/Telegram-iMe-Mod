package com.iMe.storage.data.locale.prefs.impl;

import android.content.Context;
import com.google.gson.Gson;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.model.twitter.PreferenceTwitterTelegramIdMappedData;
import com.iMe.storage.domain.storage.TwitterPreferenceHelper;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TwitterPreference.kt */
/* loaded from: classes3.dex */
public final class TwitterPreference extends BasePreference implements TwitterPreferenceHelper {
    private PreferenceTwitterTelegramIdMappedData accountsData;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwitterPreference(Context context, Gson gson, TelegramGateway telegramGateway) {
        super("ime_twitter_prefs", telegramGateway, context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(gson, "gson");
        Intrinsics.checkNotNullParameter(telegramGateway, "telegramGateway");
        this.accountsData = new PreferenceTwitterTelegramIdMappedData(gson, getMPref(), new TwitterPreference$accountsData$1(this));
    }

    @Override // com.iMe.storage.domain.storage.TwitterPreferenceHelper
    public PreferenceTwitterTelegramIdMappedData getAccountsData() {
        return this.accountsData;
    }
}
