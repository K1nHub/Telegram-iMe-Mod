package com.iMe.model.wallet.crypto.settings;

import com.iMe.model.common.NoChildNode;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3632R;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: BlockchainManagementItem.kt */
/* loaded from: classes3.dex */
public abstract class BlockchainManagementItem extends NoChildNode {
    public /* synthetic */ BlockchainManagementItem(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private BlockchainManagementItem() {
    }

    /* compiled from: BlockchainManagementItem.kt */
    /* loaded from: classes3.dex */
    public static final class Wallet extends BlockchainManagementItem {
        private final String address;
        private final BlockchainType blockchainType;
        private final String creationDate;
        private final boolean isLastItem;
        private final List<String> secretWords;

        public static /* synthetic */ Wallet copy$default(Wallet wallet2, BlockchainType blockchainType, String str, String str2, List list, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                blockchainType = wallet2.blockchainType;
            }
            if ((i & 2) != 0) {
                str = wallet2.address;
            }
            String str3 = str;
            if ((i & 4) != 0) {
                str2 = wallet2.creationDate;
            }
            String str4 = str2;
            List<String> list2 = list;
            if ((i & 8) != 0) {
                list2 = wallet2.secretWords;
            }
            List list3 = list2;
            if ((i & 16) != 0) {
                z = wallet2.isLastItem;
            }
            return wallet2.copy(blockchainType, str3, str4, list3, z);
        }

        public final BlockchainType component1() {
            return this.blockchainType;
        }

        public final String component2() {
            return this.address;
        }

        public final String component3() {
            return this.creationDate;
        }

        public final List<String> component4() {
            return this.secretWords;
        }

        public final boolean component5() {
            return this.isLastItem;
        }

        public final Wallet copy(BlockchainType blockchainType, String address, String creationDate, List<String> secretWords, boolean z) {
            Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
            Intrinsics.checkNotNullParameter(address, "address");
            Intrinsics.checkNotNullParameter(creationDate, "creationDate");
            Intrinsics.checkNotNullParameter(secretWords, "secretWords");
            return new Wallet(blockchainType, address, creationDate, secretWords, z);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Wallet) {
                Wallet wallet2 = (Wallet) obj;
                return this.blockchainType == wallet2.blockchainType && Intrinsics.areEqual(this.address, wallet2.address) && Intrinsics.areEqual(this.creationDate, wallet2.creationDate) && Intrinsics.areEqual(this.secretWords, wallet2.secretWords) && this.isLastItem == wallet2.isLastItem;
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int hashCode() {
            int hashCode = ((((((this.blockchainType.hashCode() * 31) + this.address.hashCode()) * 31) + this.creationDate.hashCode()) * 31) + this.secretWords.hashCode()) * 31;
            boolean z = this.isLastItem;
            int i = z;
            if (z != 0) {
                i = 1;
            }
            return hashCode + i;
        }

        public String toString() {
            return "Wallet(blockchainType=" + this.blockchainType + ", address=" + this.address + ", creationDate=" + this.creationDate + ", secretWords=" + this.secretWords + ", isLastItem=" + this.isLastItem + ')';
        }

        public final BlockchainType getBlockchainType() {
            return this.blockchainType;
        }

        public final String getAddress() {
            return this.address;
        }

        public final String getCreationDate() {
            return this.creationDate;
        }

        public final List<String> getSecretWords() {
            return this.secretWords;
        }

        public final boolean isLastItem() {
            return this.isLastItem;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Wallet(BlockchainType blockchainType, String address, String creationDate, List<String> secretWords, boolean z) {
            super(null);
            Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
            Intrinsics.checkNotNullParameter(address, "address");
            Intrinsics.checkNotNullParameter(creationDate, "creationDate");
            Intrinsics.checkNotNullParameter(secretWords, "secretWords");
            this.blockchainType = blockchainType;
            this.address = address;
            this.creationDate = creationDate;
            this.secretWords = secretWords;
            this.isLastItem = z;
        }
    }

    /* compiled from: BlockchainManagementItem.kt */
    /* loaded from: classes3.dex */
    public static final class Section extends BlockchainManagementItem {
        public static final Section INSTANCE = new Section();

        private Section() {
            super(null);
        }
    }

    /* compiled from: BlockchainManagementItem.kt */
    /* loaded from: classes3.dex */
    public static abstract class ActionButton extends BlockchainManagementItem {
        private final int colorKey;
        private final int iconResId;
        private final int texResId;

        public /* synthetic */ ActionButton(int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this(i, i2, i3);
        }

        public final int getIconResId() {
            return this.iconResId;
        }

        public final int getTexResId() {
            return this.texResId;
        }

        public final int getColorKey() {
            return this.colorKey;
        }

        private ActionButton(int i, int i2, int i3) {
            super(null);
            this.iconResId = i;
            this.texResId = i2;
            this.colorKey = i3;
        }

        public String getText(ResourceManager resourceManager) {
            Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
            return resourceManager.getString(this.texResId);
        }

        /* compiled from: BlockchainManagementItem.kt */
        /* loaded from: classes3.dex */
        public static final class AddWallet extends ActionButton {
            private final BlockchainType blockchainType;

            public static /* synthetic */ AddWallet copy$default(AddWallet addWallet, BlockchainType blockchainType, int i, Object obj) {
                if ((i & 1) != 0) {
                    blockchainType = addWallet.blockchainType;
                }
                return addWallet.copy(blockchainType);
            }

            public final BlockchainType component1() {
                return this.blockchainType;
            }

            public final AddWallet copy(BlockchainType blockchainType) {
                Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
                return new AddWallet(blockchainType);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof AddWallet) && this.blockchainType == ((AddWallet) obj).blockchainType;
            }

            public int hashCode() {
                return this.blockchainType.hashCode();
            }

            public String toString() {
                return "AddWallet(blockchainType=" + this.blockchainType + ')';
            }

            public final BlockchainType getBlockchainType() {
                return this.blockchainType;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AddWallet(BlockchainType blockchainType) {
                super(C3632R.C3634drawable.fork_ic_add, C3632R.string.wallet_blockchain_add_wallet, Theme.key_dialogTextBlue, null);
                Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
                this.blockchainType = blockchainType;
            }

            @Override // com.iMe.model.wallet.crypto.settings.BlockchainManagementItem.ActionButton
            public String getText(ResourceManager resourceManager) {
                Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
                return resourceManager.getString(getTexResId(), resourceManager.getString(this.blockchainType.getTitleResId()));
            }
        }

        /* compiled from: BlockchainManagementItem.kt */
        /* loaded from: classes3.dex */
        public static final class ResetAllWallets extends ActionButton {
            public static final ResetAllWallets INSTANCE = new ResetAllWallets();

            private ResetAllWallets() {
                super(C3632R.C3634drawable.msg_block2, C3632R.string.wallet_reset_all_title, Theme.key_text_RedRegular, null);
            }
        }
    }
}
