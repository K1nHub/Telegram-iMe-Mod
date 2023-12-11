package com.iMe.model.wallet.home;

import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3632R;
/* compiled from: BannerSlide.kt */
/* loaded from: classes3.dex */
public abstract class BannerSlide {
    private final int actionTextResId;
    private final int animatedIconResId;
    private final int longDescriptionResId;
    private final int shortDescriptionResId;
    private final int titleResId;

    public /* synthetic */ BannerSlide(int i, int i2, int i3, int i4, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, i3, i4, i5);
    }

    private BannerSlide(int i, int i2, int i3, int i4, int i5) {
        this.titleResId = i;
        this.shortDescriptionResId = i2;
        this.longDescriptionResId = i3;
        this.actionTextResId = i4;
        this.animatedIconResId = i5;
    }

    public int getTitleResId() {
        return this.titleResId;
    }

    public int getShortDescriptionResId() {
        return this.shortDescriptionResId;
    }

    public int getLongDescriptionResId() {
        return this.longDescriptionResId;
    }

    public int getActionTextResId() {
        return this.actionTextResId;
    }

    public int getAnimatedIconResId() {
        return this.animatedIconResId;
    }

    /* compiled from: BannerSlide.kt */
    /* loaded from: classes3.dex */
    public static abstract class Crypto extends BannerSlide {
        public static final Companion Companion = new Companion(null);
        private final int actionTextResId;
        private final int animatedIconResId;
        private final int longDescriptionResId;
        private final int shortDescriptionResId;
        private final int titleResId;

        public /* synthetic */ Crypto(int i, int i2, int i3, int i4, int i5, DefaultConstructorMarker defaultConstructorMarker) {
            this(i, i2, i3, i4, i5);
        }

        @Override // com.iMe.model.wallet.home.BannerSlide
        public int getTitleResId() {
            return this.titleResId;
        }

        @Override // com.iMe.model.wallet.home.BannerSlide
        public int getShortDescriptionResId() {
            return this.shortDescriptionResId;
        }

        @Override // com.iMe.model.wallet.home.BannerSlide
        public int getLongDescriptionResId() {
            return this.longDescriptionResId;
        }

        public /* synthetic */ Crypto(int i, int i2, int i3, int i4, int i5, int i6, DefaultConstructorMarker defaultConstructorMarker) {
            this(i, i2, i3, (i6 & 8) != 0 ? C3632R.string.common_next : i4, i5, null);
        }

        @Override // com.iMe.model.wallet.home.BannerSlide
        public int getActionTextResId() {
            return this.actionTextResId;
        }

        @Override // com.iMe.model.wallet.home.BannerSlide
        public int getAnimatedIconResId() {
            return this.animatedIconResId;
        }

        private Crypto(int i, int i2, int i3, int i4, int i5) {
            super(i, i2, i3, i4, i5, null);
            this.titleResId = i;
            this.shortDescriptionResId = i2;
            this.longDescriptionResId = i3;
            this.actionTextResId = i4;
            this.animatedIconResId = i5;
        }

        /* compiled from: BannerSlide.kt */
        /* loaded from: classes3.dex */
        public static final class AttractorTestnet extends Crypto {
            public static final AttractorTestnet INSTANCE = new AttractorTestnet();

            /* JADX WARN: Illegal instructions before constructor call */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            private AttractorTestnet() {
                /*
                    r8 = this;
                    int r1 = org.telegram.messenger.C3632R.string.wallet_banner_slide_attractor_testnet_title
                    int r3 = org.telegram.messenger.C3632R.string.wallet_banner_slide_attractor_testnet_description
                    int r5 = org.telegram.messenger.C3632R.raw.fork_attractor
                    r4 = 0
                    r6 = 8
                    r7 = 0
                    r0 = r8
                    r2 = r3
                    r0.<init>(r1, r2, r3, r4, r5, r6, r7)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.iMe.model.wallet.home.BannerSlide.Crypto.AttractorTestnet.<init>():void");
            }
        }

        /* compiled from: BannerSlide.kt */
        /* loaded from: classes3.dex */
        public static final class AttractorGiveaway extends Crypto {
            public static final AttractorGiveaway INSTANCE = new AttractorGiveaway();

            /* JADX WARN: Illegal instructions before constructor call */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            private AttractorGiveaway() {
                /*
                    r8 = this;
                    int r1 = org.telegram.messenger.C3632R.string.wallet_banner_slide_attractor_giveaway_title
                    int r3 = org.telegram.messenger.C3632R.string.wallet_banner_slide_attractor_giveaway_description
                    int r5 = org.telegram.messenger.C3632R.raw.fork_attractor_giveaway
                    r4 = 0
                    r6 = 8
                    r7 = 0
                    r0 = r8
                    r2 = r3
                    r0.<init>(r1, r2, r3, r4, r5, r6, r7)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.iMe.model.wallet.home.BannerSlide.Crypto.AttractorGiveaway.<init>():void");
            }
        }

        /* compiled from: BannerSlide.kt */
        /* loaded from: classes3.dex */
        public static final class FAQ extends Crypto {
            public static final FAQ INSTANCE = new FAQ();

            private FAQ() {
                super(C3632R.string.wallet_banner_slide_faq_title, C3632R.string.wallet_banner_slide_faq_description, C3632R.string.wallet_banner_slide_faq_long_description, 0, C3632R.raw.fork_faq, 8, null);
            }
        }

        /* compiled from: BannerSlide.kt */
        /* loaded from: classes3.dex */
        public static final class NonCustodial extends Crypto {
            public static final NonCustodial INSTANCE = new NonCustodial();

            private NonCustodial() {
                super(C3632R.string.wallet_banner_slide_non_custodial_title, C3632R.string.wallet_banner_slide_non_custodial_description, C3632R.string.wallet_banner_slide_non_custodial_long_description, C3632R.string.wallet_eth_backup_info_start_dialog_title, C3632R.raw.fork_non_custodial, null);
            }
        }

        /* compiled from: BannerSlide.kt */
        /* loaded from: classes3.dex */
        public static final class Safe extends Crypto {
            public static final Safe INSTANCE = new Safe();

            private Safe() {
                super(C3632R.string.wallet_banner_slide_safe_title, C3632R.string.wallet_banner_slide_safe_description, C3632R.string.wallet_banner_slide_safe_long_description, C3632R.string.common_ok, C3632R.raw.fork_safe, null);
            }
        }

        /* compiled from: BannerSlide.kt */
        /* loaded from: classes3.dex */
        public static final class CryptoTransfers extends Crypto {
            public static final CryptoTransfers INSTANCE = new CryptoTransfers();

            private CryptoTransfers() {
                super(C3632R.string.wallet_banner_slide_crypto_transfers_title, C3632R.string.wallet_banner_slide_crypto_transfers_description, C3632R.string.wallet_banner_slide_crypto_transfers_long_description, C3632R.string.transfer_via_wallet_action_item, C3632R.raw.fork_crypto_transfers, null);
            }
        }

        /* compiled from: BannerSlide.kt */
        /* loaded from: classes3.dex */
        public static final class Swap extends Crypto {
            public static final Swap INSTANCE = new Swap();

            private Swap() {
                super(C3632R.string.wallet_banner_slide_swap_title, C3632R.string.wallet_banner_slide_swap_description, C3632R.string.wallet_banner_slide_swap_long_description, C3632R.string.wallet_swap_process_button_exchange, C3632R.raw.fork_swap, null);
            }
        }

        /* compiled from: BannerSlide.kt */
        /* loaded from: classes3.dex */
        public static final class MultiNetworks extends Crypto {
            public static final MultiNetworks INSTANCE = new MultiNetworks();

            private MultiNetworks() {
                super(C3632R.string.wallet_banner_slide_multi_networks_title, C3632R.string.wallet_banner_slide_multi_networks_description, C3632R.string.wallet_banner_slide_multi_networks_long_description, C3632R.string.common_ok, C3632R.raw.fork_multi_networking, null);
            }
        }

        /* compiled from: BannerSlide.kt */
        /* loaded from: classes3.dex */
        public static final class Gate extends Crypto {
            public static final Gate INSTANCE = new Gate();

            private Gate() {
                super(C3632R.string.wallet_banner_slide_gate_title, C3632R.string.wallet_banner_slide_gate_description, C3632R.string.wallet_banner_slide_gate_long_description, 0, C3632R.raw.fork_gate, 8, null);
            }
        }

        /* compiled from: BannerSlide.kt */
        /* loaded from: classes3.dex */
        public static final class AscendeEX extends Crypto {
            public static final AscendeEX INSTANCE = new AscendeEX();

            private AscendeEX() {
                super(C3632R.string.wallet_banner_slide_ascendeex_title, C3632R.string.wallet_banner_slide_ascendeex_description, C3632R.string.wallet_banner_slide_ascendeex_long_description, 0, C3632R.raw.fork_ascendeex, 8, null);
            }
        }

        /* compiled from: BannerSlide.kt */
        /* loaded from: classes3.dex */
        public static final class Staking extends Crypto {
            public static final Staking INSTANCE = new Staking();

            private Staking() {
                super(C3632R.string.wallet_banner_slide_staking_title, C3632R.string.wallet_banner_slide_staking_description, C3632R.string.wallet_banner_slide_staking_long_description, 0, C3632R.raw.fork_staking_profit, 8, null);
            }
        }

        /* compiled from: BannerSlide.kt */
        /* loaded from: classes3.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final Crypto[] getBanners() {
                return new Crypto[]{AttractorTestnet.INSTANCE, AttractorGiveaway.INSTANCE, FAQ.INSTANCE, NonCustodial.INSTANCE, Safe.INSTANCE, CryptoTransfers.INSTANCE, Swap.INSTANCE, MultiNetworks.INSTANCE, Gate.INSTANCE, AscendeEX.INSTANCE, Staking.INSTANCE};
            }
        }
    }

    /* compiled from: BannerSlide.kt */
    /* loaded from: classes3.dex */
    public static abstract class Binance extends BannerSlide {
        public static final Companion Companion = new Companion(null);
        private final int actionTextResId;
        private final int animatedIconResId;
        private final int longDescriptionResId;
        private final int shortDescriptionResId;
        private final int titleResId;

        public /* synthetic */ Binance(int i, int i2, int i3, int i4, int i5, DefaultConstructorMarker defaultConstructorMarker) {
            this(i, i2, i3, i4, i5);
        }

        @Override // com.iMe.model.wallet.home.BannerSlide
        public int getTitleResId() {
            return this.titleResId;
        }

        @Override // com.iMe.model.wallet.home.BannerSlide
        public int getShortDescriptionResId() {
            return this.shortDescriptionResId;
        }

        @Override // com.iMe.model.wallet.home.BannerSlide
        public int getLongDescriptionResId() {
            return this.longDescriptionResId;
        }

        @Override // com.iMe.model.wallet.home.BannerSlide
        public int getActionTextResId() {
            return this.actionTextResId;
        }

        @Override // com.iMe.model.wallet.home.BannerSlide
        public int getAnimatedIconResId() {
            return this.animatedIconResId;
        }

        private Binance(int i, int i2, int i3, int i4, int i5) {
            super(i, i2, i3, i4, i5, null);
            this.titleResId = i;
            this.shortDescriptionResId = i2;
            this.longDescriptionResId = i3;
            this.actionTextResId = i4;
            this.animatedIconResId = i5;
        }

        /* compiled from: BannerSlide.kt */
        /* loaded from: classes3.dex */
        public static final class Information extends Binance {
            public static final Information INSTANCE = new Information();

            private Information() {
                super(C3632R.string.wallet_banner_slide_binance_pay_information_title, C3632R.string.wallet_banner_slide_binance_pay_information_description, C3632R.string.wallet_banner_slide_binance_pay_information_long_description, C3632R.string.common_ok, C3632R.raw.fork_binance_pay_information, null);
            }
        }

        /* compiled from: BannerSlide.kt */
        /* loaded from: classes3.dex */
        public static final class OperationWithoutFee extends Binance {
            public static final OperationWithoutFee INSTANCE = new OperationWithoutFee();

            private OperationWithoutFee() {
                super(C3632R.string.wallet_banner_slide_binance_pay_operation_without_fee_title, C3632R.string.wallet_banner_slide_binance_pay_operation_without_fee_description, C3632R.string.wallet_banner_slide_binance_pay_operation_without_fee_long_description, C3632R.string.common_ok, C3632R.raw.fork_binance_pay_operation_without_fee, null);
            }
        }

        /* compiled from: BannerSlide.kt */
        /* loaded from: classes3.dex */
        public static final class Marketplace extends Binance {
            public static final Marketplace INSTANCE = new Marketplace();

            private Marketplace() {
                super(C3632R.string.wallet_banner_slide_binance_pay_marketplace_title, C3632R.string.wallet_banner_slide_binance_pay_marketplace_description, C3632R.string.wallet_banner_slide_binance_pay_marketplace_long_description, C3632R.string.common_next, C3632R.raw.fork_binance_pay_marketplace, null);
            }
        }

        /* compiled from: BannerSlide.kt */
        /* loaded from: classes3.dex */
        public static final class FAQ extends Binance {
            public static final FAQ INSTANCE = new FAQ();

            private FAQ() {
                super(C3632R.string.wallet_banner_slide_binance_pay_faq_title, C3632R.string.wallet_banner_slide_binance_pay_faq_description, C3632R.string.wallet_banner_slide_binance_pay_faq_long_description, C3632R.string.common_next, C3632R.raw.fork_binance_pay_faq, null);
            }
        }

        /* compiled from: BannerSlide.kt */
        /* loaded from: classes3.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final Binance[] getBanners() {
                return new Binance[]{Information.INSTANCE, OperationWithoutFee.INSTANCE, Marketplace.INSTANCE, FAQ.INSTANCE};
            }
        }
    }

    public final int getActionButtonText(CryptoAccessManager cryptoAccessManager) {
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        if ((!Intrinsics.areEqual(this, Crypto.Swap.INSTANCE) && !Intrinsics.areEqual(this, Crypto.NonCustodial.INSTANCE)) || cryptoAccessManager.isCurrentBlockchainWalletCreated()) {
            return getActionTextResId();
        }
        return C3632R.string.common_ok;
    }
}
