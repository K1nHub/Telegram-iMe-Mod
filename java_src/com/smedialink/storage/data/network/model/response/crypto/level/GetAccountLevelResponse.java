package com.smedialink.storage.data.network.model.response.crypto.level;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: GetAccountLevelResponse.kt */
/* loaded from: classes3.dex */
public final class GetAccountLevelResponse {
    private final String accountRank;
    private final String telegramId;

    public static /* synthetic */ GetAccountLevelResponse copy$default(GetAccountLevelResponse getAccountLevelResponse, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = getAccountLevelResponse.telegramId;
        }
        if ((i & 2) != 0) {
            str2 = getAccountLevelResponse.accountRank;
        }
        return getAccountLevelResponse.copy(str, str2);
    }

    public final String component1() {
        return this.telegramId;
    }

    public final String component2() {
        return this.accountRank;
    }

    public final GetAccountLevelResponse copy(String telegramId, String accountRank) {
        Intrinsics.checkNotNullParameter(telegramId, "telegramId");
        Intrinsics.checkNotNullParameter(accountRank, "accountRank");
        return new GetAccountLevelResponse(telegramId, accountRank);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GetAccountLevelResponse) {
            GetAccountLevelResponse getAccountLevelResponse = (GetAccountLevelResponse) obj;
            return Intrinsics.areEqual(this.telegramId, getAccountLevelResponse.telegramId) && Intrinsics.areEqual(this.accountRank, getAccountLevelResponse.accountRank);
        }
        return false;
    }

    public int hashCode() {
        return (this.telegramId.hashCode() * 31) + this.accountRank.hashCode();
    }

    public String toString() {
        return "GetAccountLevelResponse(telegramId=" + this.telegramId + ", accountRank=" + this.accountRank + ')';
    }

    public GetAccountLevelResponse(String telegramId, String accountRank) {
        Intrinsics.checkNotNullParameter(telegramId, "telegramId");
        Intrinsics.checkNotNullParameter(accountRank, "accountRank");
        this.telegramId = telegramId;
        this.accountRank = accountRank;
    }

    public final String getTelegramId() {
        return this.telegramId;
    }

    public final String getAccountRank() {
        return this.accountRank;
    }
}
