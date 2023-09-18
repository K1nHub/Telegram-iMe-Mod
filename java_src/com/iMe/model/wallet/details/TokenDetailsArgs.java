package com.iMe.model.wallet.details;

import com.iMe.model.staking.StakingDetailsItem;
import com.iMe.model.wallet.home.AccountItem;
import com.iMe.storage.domain.model.binancepay.BinanceTokenBalanceInfo;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxInfo;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokenDetailsArgs.kt */
/* loaded from: classes4.dex */
public abstract class TokenDetailsArgs {
    public /* synthetic */ TokenDetailsArgs(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private TokenDetailsArgs() {
    }

    /* compiled from: TokenDetailsArgs.kt */
    /* loaded from: classes4.dex */
    public static final class Crypto extends TokenDetailsArgs {
        private final AccountItem.Token token;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Crypto(AccountItem.Token token) {
            super(null);
            Intrinsics.checkNotNullParameter(token, "token");
            this.token = token;
        }

        public final AccountItem.Token getToken() {
            return this.token;
        }
    }

    /* compiled from: TokenDetailsArgs.kt */
    /* loaded from: classes4.dex */
    public static final class Binance extends TokenDetailsArgs {
        private final BinanceTokenBalanceInfo token;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Binance(BinanceTokenBalanceInfo token) {
            super(null);
            Intrinsics.checkNotNullParameter(token, "token");
            this.token = token;
        }

        public final BinanceTokenBalanceInfo getToken() {
            return this.token;
        }
    }

    /* compiled from: TokenDetailsArgs.kt */
    /* loaded from: classes4.dex */
    public static final class Staking extends TokenDetailsArgs {
        private StakingDetailsItem stakingDetails;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Staking(StakingDetailsItem stakingDetails) {
            super(null);
            Intrinsics.checkNotNullParameter(stakingDetails, "stakingDetails");
            this.stakingDetails = stakingDetails;
        }

        public final StakingDetailsItem getStakingDetails() {
            return this.stakingDetails;
        }

        public final void setStakingDetails(StakingDetailsItem stakingDetailsItem) {
            Intrinsics.checkNotNullParameter(stakingDetailsItem, "<set-?>");
            this.stakingDetails = stakingDetailsItem;
        }
    }

    /* compiled from: TokenDetailsArgs.kt */
    /* loaded from: classes4.dex */
    public static final class CryptoBox extends TokenDetailsArgs {
        private CryptoBoxInfo cryptoBoxInfo;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CryptoBox(CryptoBoxInfo cryptoBoxInfo) {
            super(null);
            Intrinsics.checkNotNullParameter(cryptoBoxInfo, "cryptoBoxInfo");
            this.cryptoBoxInfo = cryptoBoxInfo;
        }

        public final CryptoBoxInfo getCryptoBoxInfo() {
            return this.cryptoBoxInfo;
        }

        public final void setCryptoBoxInfo(CryptoBoxInfo cryptoBoxInfo) {
            Intrinsics.checkNotNullParameter(cryptoBoxInfo, "<set-?>");
            this.cryptoBoxInfo = cryptoBoxInfo;
        }
    }
}
