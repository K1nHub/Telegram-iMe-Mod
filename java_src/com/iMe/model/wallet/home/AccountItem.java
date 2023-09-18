package com.iMe.model.wallet.home;

import com.iMe.model.common.NoChildNode;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AccountItem.kt */
/* loaded from: classes4.dex */
public abstract class AccountItem extends NoChildNode {
    private TokenBalance balance;

    public /* synthetic */ AccountItem(TokenBalance tokenBalance, DefaultConstructorMarker defaultConstructorMarker) {
        this(tokenBalance);
    }

    public TokenBalance getBalance() {
        return this.balance;
    }

    public void setBalance(TokenBalance tokenBalance) {
        Intrinsics.checkNotNullParameter(tokenBalance, "<set-?>");
        this.balance = tokenBalance;
    }

    private AccountItem(TokenBalance tokenBalance) {
        this.balance = tokenBalance;
    }

    /* compiled from: AccountItem.kt */
    /* loaded from: classes4.dex */
    public static final class Create extends AccountItem {
        private TokenBalance balance;
        private final List<HorizontalActionButtonItem> horizontalActionButtonItems;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Create copy$default(Create create, TokenBalance tokenBalance, List list, int i, Object obj) {
            if ((i & 1) != 0) {
                tokenBalance = create.getBalance();
            }
            if ((i & 2) != 0) {
                list = create.horizontalActionButtonItems;
            }
            return create.copy(tokenBalance, list);
        }

        public final TokenBalance component1() {
            return getBalance();
        }

        public final List<HorizontalActionButtonItem> component2() {
            return this.horizontalActionButtonItems;
        }

        public final Create copy(TokenBalance balance, List<HorizontalActionButtonItem> horizontalActionButtonItems) {
            Intrinsics.checkNotNullParameter(balance, "balance");
            Intrinsics.checkNotNullParameter(horizontalActionButtonItems, "horizontalActionButtonItems");
            return new Create(balance, horizontalActionButtonItems);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Create) {
                Create create = (Create) obj;
                return Intrinsics.areEqual(getBalance(), create.getBalance()) && Intrinsics.areEqual(this.horizontalActionButtonItems, create.horizontalActionButtonItems);
            }
            return false;
        }

        public int hashCode() {
            return (getBalance().hashCode() * 31) + this.horizontalActionButtonItems.hashCode();
        }

        public String toString() {
            return "Create(balance=" + getBalance() + ", horizontalActionButtonItems=" + this.horizontalActionButtonItems + ')';
        }

        @Override // com.iMe.model.wallet.home.AccountItem
        public TokenBalance getBalance() {
            return this.balance;
        }

        @Override // com.iMe.model.wallet.home.AccountItem
        public void setBalance(TokenBalance tokenBalance) {
            Intrinsics.checkNotNullParameter(tokenBalance, "<set-?>");
            this.balance = tokenBalance;
        }

        public /* synthetic */ Create(TokenBalance tokenBalance, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(tokenBalance, (i & 2) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list);
        }

        public final List<HorizontalActionButtonItem> getHorizontalActionButtonItems() {
            return this.horizontalActionButtonItems;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Create(TokenBalance balance, List<HorizontalActionButtonItem> horizontalActionButtonItems) {
            super(balance, null);
            Intrinsics.checkNotNullParameter(balance, "balance");
            Intrinsics.checkNotNullParameter(horizontalActionButtonItems, "horizontalActionButtonItems");
            this.balance = balance;
            this.horizontalActionButtonItems = horizontalActionButtonItems;
        }
    }

    /* compiled from: AccountItem.kt */
    /* loaded from: classes4.dex */
    public static final class Token extends AccountItem {
        private TokenBalance balance;
        private final boolean isBalanceHidden;
        private final boolean isNetworkLogoVisible;
        private final boolean isQuotationVisible;

        public static /* synthetic */ Token copy$default(Token token, TokenBalance tokenBalance, boolean z, boolean z2, boolean z3, int i, Object obj) {
            if ((i & 1) != 0) {
                tokenBalance = token.getBalance();
            }
            if ((i & 2) != 0) {
                z = token.isNetworkLogoVisible;
            }
            if ((i & 4) != 0) {
                z2 = token.isQuotationVisible;
            }
            if ((i & 8) != 0) {
                z3 = token.isBalanceHidden;
            }
            return token.copy(tokenBalance, z, z2, z3);
        }

        public final TokenBalance component1() {
            return getBalance();
        }

        public final boolean component2() {
            return this.isNetworkLogoVisible;
        }

        public final boolean component3() {
            return this.isQuotationVisible;
        }

        public final boolean component4() {
            return this.isBalanceHidden;
        }

        public final Token copy(TokenBalance balance, boolean z, boolean z2, boolean z3) {
            Intrinsics.checkNotNullParameter(balance, "balance");
            return new Token(balance, z, z2, z3);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Token) {
                Token token = (Token) obj;
                return Intrinsics.areEqual(getBalance(), token.getBalance()) && this.isNetworkLogoVisible == token.isNetworkLogoVisible && this.isQuotationVisible == token.isQuotationVisible && this.isBalanceHidden == token.isBalanceHidden;
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int hashCode() {
            int hashCode = getBalance().hashCode() * 31;
            boolean z = this.isNetworkLogoVisible;
            int i = z;
            if (z != 0) {
                i = 1;
            }
            int i2 = (hashCode + i) * 31;
            boolean z2 = this.isQuotationVisible;
            int i3 = z2;
            if (z2 != 0) {
                i3 = 1;
            }
            int i4 = (i2 + i3) * 31;
            boolean z3 = this.isBalanceHidden;
            return i4 + (z3 ? 1 : z3 ? 1 : 0);
        }

        public String toString() {
            return "Token(balance=" + getBalance() + ", isNetworkLogoVisible=" + this.isNetworkLogoVisible + ", isQuotationVisible=" + this.isQuotationVisible + ", isBalanceHidden=" + this.isBalanceHidden + ')';
        }

        @Override // com.iMe.model.wallet.home.AccountItem
        public TokenBalance getBalance() {
            return this.balance;
        }

        @Override // com.iMe.model.wallet.home.AccountItem
        public void setBalance(TokenBalance tokenBalance) {
            Intrinsics.checkNotNullParameter(tokenBalance, "<set-?>");
            this.balance = tokenBalance;
        }

        public final boolean isNetworkLogoVisible() {
            return this.isNetworkLogoVisible;
        }

        public final boolean isQuotationVisible() {
            return this.isQuotationVisible;
        }

        public final boolean isBalanceHidden() {
            return this.isBalanceHidden;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Token(TokenBalance balance, boolean z, boolean z2, boolean z3) {
            super(balance, null);
            Intrinsics.checkNotNullParameter(balance, "balance");
            this.balance = balance;
            this.isNetworkLogoVisible = z;
            this.isQuotationVisible = z2;
            this.isBalanceHidden = z3;
        }
    }
}
