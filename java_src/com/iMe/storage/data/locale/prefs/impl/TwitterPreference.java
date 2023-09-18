package com.iMe.storage.data.locale.prefs.impl;

import android.content.Context;
import com.google.gson.Gson;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.model.twitter.PreferenceTwitterTelegramIdMappedData;
import com.iMe.storage.domain.storage.BasePreferenceHelper;
import com.iMe.storage.domain.storage.TwitterPreferenceHelper;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TwitterPreference.kt */
/* loaded from: classes4.dex */
public final class TwitterPreference extends BasePreference implements TwitterPreferenceHelper {
    private PreferenceTwitterTelegramIdMappedData accountsData;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwitterPreference(Context context, Gson gson, TelegramGateway telegramGateway) {
        super("ime_twitter_prefs", telegramGateway, context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(gson, "gson");
        Intrinsics.checkNotNullParameter(telegramGateway, "telegramGateway");
        this.accountsData = new PreferenceTwitterTelegramIdMappedData(gson, getMPref(), new Function0<String>() { // from class: com.iMe.storage.data.locale.prefs.impl.TwitterPreference$accountsData$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                return BasePreferenceHelper.CC.withTgAccount$default(TwitterPreference.this, "account_data", null, 2, null);
            }
        });
    }

    @Override // com.iMe.storage.domain.storage.TwitterPreferenceHelper
    public PreferenceTwitterTelegramIdMappedData getAccountsData() {
        return this.accountsData;
    }
}
