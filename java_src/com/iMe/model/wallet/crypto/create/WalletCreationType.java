package com.iMe.model.wallet.crypto.create;

import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3242R;
/* compiled from: WalletCreationType.kt */
/* loaded from: classes3.dex */
public abstract class WalletCreationType {
    private final int iconResId;
    private final int stringResId;

    public /* synthetic */ WalletCreationType(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2);
    }

    public abstract String getActionText(ResourceManager resourceManager);

    private WalletCreationType(int i, int i2) {
        this.iconResId = i;
        this.stringResId = i2;
    }

    public int getIconResId() {
        return this.iconResId;
    }

    public int getStringResId() {
        return this.stringResId;
    }

    /* compiled from: WalletCreationType.kt */
    /* loaded from: classes3.dex */
    public static abstract class Initial extends WalletCreationType {
        public static final Companion Companion = new Companion(null);
        private final int iconResId;
        private final int ordinal;
        private final int stringResId;

        public /* synthetic */ Initial(int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this(i, i2, i3);
        }

        @Override // com.iMe.model.wallet.crypto.create.WalletCreationType
        public int getIconResId() {
            return this.iconResId;
        }

        @Override // com.iMe.model.wallet.crypto.create.WalletCreationType
        public int getStringResId() {
            return this.stringResId;
        }

        public final int getOrdinal() {
            return this.ordinal;
        }

        private Initial(int i, int i2, int i3) {
            super(i, i2, null);
            this.iconResId = i;
            this.stringResId = i2;
            this.ordinal = i3;
        }

        @Override // com.iMe.model.wallet.crypto.create.WalletCreationType
        public String getActionText(ResourceManager resourceManager) {
            Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
            return resourceManager.getString(getStringResId());
        }

        /* compiled from: WalletCreationType.kt */
        /* loaded from: classes3.dex */
        public static final class Create extends Initial {
            public static final Create INSTANCE = new Create();

            private Create() {
                super(C3242R.C3244drawable.fork_ic_wallet_create, C3242R.string.wallet_dashboard_create_eth_wallet, 0, null);
            }
        }

        /* compiled from: WalletCreationType.kt */
        /* loaded from: classes3.dex */
        public static final class Import extends Initial {
            public static final Import INSTANCE = new Import();

            private Import() {
                super(C3242R.C3244drawable.fork_ic_wallet_import, C3242R.string.wallet_dashboard_import_eth_wallet, 1, null);
            }
        }

        /* compiled from: WalletCreationType.kt */
        /* loaded from: classes3.dex */
        public static final class Restore extends Initial {
            public static final Restore INSTANCE = new Restore();

            private Restore() {
                super(C3242R.C3244drawable.fork_ic_wallet_restore, C3242R.string.wallet_dashboard_restore_eth_wallet, 2, null);
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

            public final List<Initial> getValuesOrdered(boolean z) {
                List<Initial> listOfNotNull;
                Initial[] initialArr = new Initial[3];
                initialArr[0] = Create.INSTANCE;
                initialArr[1] = Import.INSTANCE;
                initialArr[2] = z ? Restore.INSTANCE : null;
                listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(initialArr);
                return listOfNotNull;
            }

            public final Initial getByIndex(int i) {
                Initial initial = (Initial) CollectionsKt.getOrNull(getValuesOrdered(true), i);
                return initial == null ? Create.INSTANCE : initial;
            }
        }
    }

    /* compiled from: WalletCreationType.kt */
    /* loaded from: classes3.dex */
    public static final class Activate extends WalletCreationType {
        private final BlockchainType blockchainType;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Activate(BlockchainType blockchainType) {
            super(C3242R.C3244drawable.fork_ic_wallet_create, C3242R.string.wallet_dashboard_activate_wallet, null);
            Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
            this.blockchainType = blockchainType;
        }

        @Override // com.iMe.model.wallet.crypto.create.WalletCreationType
        public String getActionText(ResourceManager resourceManager) {
            Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
            return resourceManager.getString(getStringResId(), resourceManager.getString(this.blockchainType.getTitleResId()));
        }
    }
}
