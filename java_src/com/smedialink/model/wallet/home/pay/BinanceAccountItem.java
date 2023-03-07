package com.smedialink.model.wallet.home.pay;

import com.smedialink.model.common.NoChildNode;
import com.smedialink.model.wallet.home.HorizontalActionButtonItem;
import com.smedialink.storage.domain.model.binancepay.BinanceUserInfo;
import com.smedialink.utils.extentions.common.StringExtKt;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinanceAccountItem.kt */
/* loaded from: classes3.dex */
public final class BinanceAccountItem extends NoChildNode {
    public static final Companion Companion = new Companion(null);
    private static final int SHORT_ID_MAX_LENGTH = 10;
    private static final int SHORT_ID_PART_LENGTH = 5;
    private final List<HorizontalActionButtonItem> actions;
    private final BinanceUserInfo info;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BinanceAccountItem copy$default(BinanceAccountItem binanceAccountItem, BinanceUserInfo binanceUserInfo, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            binanceUserInfo = binanceAccountItem.info;
        }
        if ((i & 2) != 0) {
            list = binanceAccountItem.actions;
        }
        return binanceAccountItem.copy(binanceUserInfo, list);
    }

    public final BinanceUserInfo component1() {
        return this.info;
    }

    public final List<HorizontalActionButtonItem> component2() {
        return this.actions;
    }

    public final BinanceAccountItem copy(BinanceUserInfo info, List<HorizontalActionButtonItem> actions) {
        Intrinsics.checkNotNullParameter(info, "info");
        Intrinsics.checkNotNullParameter(actions, "actions");
        return new BinanceAccountItem(info, actions);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BinanceAccountItem) {
            BinanceAccountItem binanceAccountItem = (BinanceAccountItem) obj;
            return Intrinsics.areEqual(this.info, binanceAccountItem.info) && Intrinsics.areEqual(this.actions, binanceAccountItem.actions);
        }
        return false;
    }

    public int hashCode() {
        return (this.info.hashCode() * 31) + this.actions.hashCode();
    }

    public String toString() {
        return "BinanceAccountItem(info=" + this.info + ", actions=" + this.actions + ')';
    }

    public final BinanceUserInfo getInfo() {
        return this.info;
    }

    public final List<HorizontalActionButtonItem> getActions() {
        return this.actions;
    }

    public BinanceAccountItem(BinanceUserInfo info, List<HorizontalActionButtonItem> actions) {
        Intrinsics.checkNotNullParameter(info, "info");
        Intrinsics.checkNotNullParameter(actions, "actions");
        this.info = info;
        this.actions = actions;
    }

    public final String getShortId() {
        return this.info.getId().length() > 10 ? StringExtKt.shortened(this.info.getId(), 5) : this.info.getId();
    }

    /* compiled from: BinanceAccountItem.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
