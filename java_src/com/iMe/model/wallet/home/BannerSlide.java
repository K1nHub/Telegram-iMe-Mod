package com.iMe.model.wallet.home;

import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3290R;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum FAQ uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:368)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:333)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:318)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:289)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* compiled from: BannerSlide.kt */
/* loaded from: classes3.dex */
public final class BannerSlide {
    private static final /* synthetic */ BannerSlide[] $VALUES;
    public static final BannerSlide ASCENDEEX;
    public static final BannerSlide BINANCE_PAY_FAQ;
    public static final BannerSlide BINANCE_PAY_INFORMATION;
    public static final BannerSlide BINANCE_PAY_MARKETPLACE;
    public static final BannerSlide BINANCE_PAY_OPERATION_WITHOUT_FEE;
    public static final BannerSlide CRYPTO_TRANSFERS;
    public static final Companion Companion;
    public static final BannerSlide FAQ;
    public static final BannerSlide GATE;
    public static final BannerSlide MULTI_NETWORKS;
    public static final BannerSlide NON_CUSTODIAL;
    public static final BannerSlide SAFE;
    public static final BannerSlide STAKING;
    public static final BannerSlide SWAP;
    private final int action;
    private final int animatedIcon;
    private final int longDescription;
    private final int shortDescription;
    private final int title;

    private static final /* synthetic */ BannerSlide[] $values() {
        return new BannerSlide[]{FAQ, NON_CUSTODIAL, SAFE, CRYPTO_TRANSFERS, SWAP, MULTI_NETWORKS, GATE, ASCENDEEX, STAKING, BINANCE_PAY_INFORMATION, BINANCE_PAY_OPERATION_WITHOUT_FEE, BINANCE_PAY_MARKETPLACE, BINANCE_PAY_FAQ};
    }

    public static BannerSlide valueOf(String str) {
        return (BannerSlide) Enum.valueOf(BannerSlide.class, str);
    }

    public static BannerSlide[] values() {
        return (BannerSlide[]) $VALUES.clone();
    }

    private BannerSlide(String str, int i, int i2, int i3, int i4, int i5, int i6) {
        this.title = i2;
        this.shortDescription = i3;
        this.longDescription = i4;
        this.action = i5;
        this.animatedIcon = i6;
    }

    public int getTitle() {
        return this.title;
    }

    public int getShortDescription() {
        return this.shortDescription;
    }

    public int getLongDescription() {
        return this.longDescription;
    }

    public int getAction() {
        return this.action;
    }

    public int getAnimatedIcon() {
        return this.animatedIcon;
    }

    static {
        int i = C3290R.string.wallet_banner_slide_faq_title;
        int i2 = C3290R.string.wallet_banner_slide_faq_description;
        int i3 = C3290R.string.wallet_banner_slide_faq_long_description;
        int i4 = C3290R.string.common_next;
        FAQ = new BannerSlide("FAQ", 0, i, i2, i3, i4, C3290R.raw.fork_faq);
        NON_CUSTODIAL = new BannerSlide("NON_CUSTODIAL", 1, C3290R.string.wallet_banner_slide_non_custodial_title, C3290R.string.wallet_banner_slide_non_custodial_description, C3290R.string.wallet_banner_slide_non_custodial_long_description, C3290R.string.wallet_eth_backup_info_start_dialog_title, C3290R.raw.fork_non_custodial);
        int i5 = C3290R.string.wallet_banner_slide_safe_title;
        int i6 = C3290R.string.wallet_banner_slide_safe_description;
        int i7 = C3290R.string.wallet_banner_slide_safe_long_description;
        int i8 = C3290R.string.common_ok;
        SAFE = new BannerSlide("SAFE", 2, i5, i6, i7, i8, C3290R.raw.fork_safe);
        CRYPTO_TRANSFERS = new BannerSlide("CRYPTO_TRANSFERS", 3, C3290R.string.wallet_banner_slide_crypto_transfers_title, C3290R.string.wallet_banner_slide_crypto_transfers_description, C3290R.string.wallet_banner_slide_crypto_transfers_long_description, C3290R.string.transfer_via_wallet_action_item, C3290R.raw.fork_crypto_transfers);
        SWAP = new BannerSlide("SWAP", 4, C3290R.string.wallet_banner_slide_swap_title, C3290R.string.wallet_banner_slide_swap_description, C3290R.string.wallet_banner_slide_swap_long_description, C3290R.string.wallet_swap_process_button_exchange, C3290R.raw.fork_swap);
        MULTI_NETWORKS = new BannerSlide("MULTI_NETWORKS", 5, C3290R.string.wallet_banner_slide_multi_networks_title, C3290R.string.wallet_banner_slide_multi_networks_description, C3290R.string.wallet_banner_slide_multi_networks_long_description, i8, C3290R.raw.fork_multi_networking);
        GATE = new BannerSlide("GATE", 6, C3290R.string.wallet_banner_slide_gate_title, C3290R.string.wallet_banner_slide_gate_description, C3290R.string.wallet_banner_slide_gate_long_description, i4, C3290R.raw.fork_gate);
        ASCENDEEX = new BannerSlide("ASCENDEEX", 7, C3290R.string.wallet_banner_slide_ascendeex_title, C3290R.string.wallet_banner_slide_ascendeex_description, C3290R.string.wallet_banner_slide_ascendeex_long_description, i4, C3290R.raw.fork_ascendeex);
        STAKING = new BannerSlide("STAKING", 8, C3290R.string.wallet_banner_slide_staking_title, C3290R.string.wallet_banner_slide_staking_description, C3290R.string.wallet_banner_slide_staking_long_description, i4, C3290R.raw.fork_staking_profit);
        BINANCE_PAY_INFORMATION = new BannerSlide("BINANCE_PAY_INFORMATION", 9, C3290R.string.wallet_banner_slide_binance_pay_information_title, C3290R.string.wallet_banner_slide_binance_pay_information_description, C3290R.string.wallet_banner_slide_binance_pay_information_long_description, i8, C3290R.raw.fork_binance_pay_information);
        BINANCE_PAY_OPERATION_WITHOUT_FEE = new BannerSlide("BINANCE_PAY_OPERATION_WITHOUT_FEE", 10, C3290R.string.wallet_banner_slide_binance_pay_operation_without_fee_title, C3290R.string.wallet_banner_slide_binance_pay_operation_without_fee_description, C3290R.string.wallet_banner_slide_binance_pay_operation_without_fee_long_description, i8, C3290R.raw.fork_binance_pay_operation_without_fee);
        BINANCE_PAY_MARKETPLACE = new BannerSlide("BINANCE_PAY_MARKETPLACE", 11, C3290R.string.wallet_banner_slide_binance_pay_marketplace_title, C3290R.string.wallet_banner_slide_binance_pay_marketplace_description, C3290R.string.wallet_banner_slide_binance_pay_marketplace_long_description, i4, C3290R.raw.fork_binance_pay_marketplace);
        BINANCE_PAY_FAQ = new BannerSlide("BINANCE_PAY_FAQ", 12, C3290R.string.wallet_banner_slide_binance_pay_faq_title, C3290R.string.wallet_banner_slide_binance_pay_faq_description, C3290R.string.wallet_banner_slide_binance_pay_faq_long_description, i4, C3290R.raw.fork_binance_pay_faq);
        $VALUES = $values();
        Companion = new Companion(null);
    }

    public final int getActionButtonText(CryptoAccessManager cryptoAccessManager) {
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        if ((this == SWAP || this == NON_CUSTODIAL) && !cryptoAccessManager.isCurrentBlockchainWalletCreated()) {
            return C3290R.string.common_ok;
        }
        return getAction();
    }

    /* compiled from: BannerSlide.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final BannerSlide[] getCryptoBanners() {
            return new BannerSlide[]{BannerSlide.FAQ, BannerSlide.NON_CUSTODIAL, BannerSlide.SAFE, BannerSlide.CRYPTO_TRANSFERS, BannerSlide.SWAP, BannerSlide.MULTI_NETWORKS, BannerSlide.GATE, BannerSlide.ASCENDEEX, BannerSlide.STAKING};
        }

        public final BannerSlide[] getBinancePayBanners() {
            return new BannerSlide[]{BannerSlide.BINANCE_PAY_INFORMATION, BannerSlide.BINANCE_PAY_OPERATION_WITHOUT_FEE, BannerSlide.BINANCE_PAY_MARKETPLACE, BannerSlide.BINANCE_PAY_FAQ};
        }
    }
}
