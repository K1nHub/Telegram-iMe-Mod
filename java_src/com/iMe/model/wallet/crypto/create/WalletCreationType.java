package com.iMe.model.wallet.crypto.create;

import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3634R;
/* compiled from: WalletCreationType.kt */
/* loaded from: classes3.dex */
public abstract class WalletCreationType {
    private final int buttonTextResId;
    private final int iconResId;

    public /* synthetic */ WalletCreationType(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2);
    }

    public abstract String getActionText(ResourceManager resourceManager);

    private WalletCreationType(int i, int i2) {
        this.iconResId = i;
        this.buttonTextResId = i2;
    }

    public int getIconResId() {
        return this.iconResId;
    }

    public int getButtonTextResId() {
        return this.buttonTextResId;
    }

    /* compiled from: WalletCreationType.kt */
    /* loaded from: classes3.dex */
    public static abstract class Initial extends WalletCreationType {
        public static final Companion Companion = new Companion(null);
        private final int buttonTextResId;
        private final int iconResId;
        private final int ordinal;
        private final int titleTextResId;

        public /* synthetic */ Initial(int i, int i2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
            this(i, i2, i3, i4);
        }

        @Override // com.iMe.model.wallet.crypto.create.WalletCreationType
        public int getIconResId() {
            return this.iconResId;
        }

        @Override // com.iMe.model.wallet.crypto.create.WalletCreationType
        public int getButtonTextResId() {
            return this.buttonTextResId;
        }

        public final int getTitleTextResId() {
            return this.titleTextResId;
        }

        public final int getOrdinal() {
            return this.ordinal;
        }

        private Initial(int i, int i2, int i3, int i4) {
            super(i, i2, null);
            this.iconResId = i;
            this.buttonTextResId = i2;
            this.titleTextResId = i3;
            this.ordinal = i4;
        }

        @Override // com.iMe.model.wallet.crypto.create.WalletCreationType
        public String getActionText(ResourceManager resourceManager) {
            Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
            return resourceManager.getString(getButtonTextResId());
        }

        /* compiled from: WalletCreationType.kt */
        /* loaded from: classes3.dex */
        public static final class Create extends Initial {
            public static final Create INSTANCE = new Create();

            private Create() {
                super(C3634R.C3636drawable.fork_ic_wallet_create, C3634R.string.wallet_dashboard_create_eth_wallet, C3634R.string.wallet_creation_intro_title_create, 0, null);
            }
        }

        /* compiled from: WalletCreationType.kt */
        /* loaded from: classes3.dex */
        public static final class Import extends Initial {
            public static final Import INSTANCE = new Import();

            private Import() {
                super(C3634R.C3636drawable.fork_ic_wallet_import, C3634R.string.wallet_dashboard_import_eth_wallet, C3634R.string.wallet_creation_intro_title_import, 1, null);
            }
        }

        /* compiled from: WalletCreationType.kt */
        /* loaded from: classes3.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final List<Initial> getValuesOrdered() {
                List<Initial> listOfNotNull;
                listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull((Object[]) new Initial[]{Create.INSTANCE, Import.INSTANCE});
                return listOfNotNull;
            }

            public final Initial getByIndex(int i) {
                Initial initial = (Initial) CollectionsKt.getOrNull(getValuesOrdered(), i);
                return initial == null ? Create.INSTANCE : initial;
            }
        }
    }

    /* compiled from: WalletCreationType.kt */
    /* loaded from: classes3.dex */
    public static final class Activate extends WalletCreationType {
        private final BlockchainType blockchainType;

        public final BlockchainType getBlockchainType() {
            return this.blockchainType;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Activate(BlockchainType blockchainType) {
            super(C3634R.C3636drawable.fork_ic_wallet_create, C3634R.string.wallet_dashboard_activate_wallet, null);
            Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
            this.blockchainType = blockchainType;
        }

        @Override // com.iMe.model.wallet.crypto.create.WalletCreationType
        public String getActionText(ResourceManager resourceManager) {
            Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
            return resourceManager.getString(getButtonTextResId(), resourceManager.getString(this.blockchainType.getTitleResId()));
        }
    }
}
