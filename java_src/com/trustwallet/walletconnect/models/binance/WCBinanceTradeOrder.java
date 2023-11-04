package com.trustwallet.walletconnect.models.binance;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WCBinanceTradeOrder.kt */
/* loaded from: classes4.dex */
public final class WCBinanceTradeOrder extends WCBinanceOrder<Message> {

    /* compiled from: WCBinanceTradeOrder.kt */
    /* loaded from: classes4.dex */
    public enum MessageKey {
        ID(TtmlNode.ATTR_ID),
        ORDER_TYPE("ordertype"),
        PRICE("price"),
        QUANTITY("quantity"),
        SENDER("sender"),
        SIDE("side"),
        SYMBOL("symbol"),
        TIME_INFORCE("timeinforce");
        
        private final String key;

        MessageKey(String str) {
            this.key = str;
        }

        public final String getKey() {
            return this.key;
        }
    }

    /* compiled from: WCBinanceTradeOrder.kt */
    /* loaded from: classes4.dex */
    public static final class Message {

        /* renamed from: id */
        private final String f416id;
        private final int orderType;
        private final long price;
        private final long quantity;
        private final String sender;
        private final int side;
        private final String symbol;
        private final int timeInforce;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Message) {
                Message message = (Message) obj;
                return Intrinsics.areEqual(this.f416id, message.f416id) && this.orderType == message.orderType && this.price == message.price && this.quantity == message.quantity && Intrinsics.areEqual(this.sender, message.sender) && this.side == message.side && Intrinsics.areEqual(this.symbol, message.symbol) && this.timeInforce == message.timeInforce;
            }
            return false;
        }

        public int hashCode() {
            return (((((((((((((this.f416id.hashCode() * 31) + this.orderType) * 31) + ProfileData$$ExternalSyntheticBackport0.m1018m(this.price)) * 31) + ProfileData$$ExternalSyntheticBackport0.m1018m(this.quantity)) * 31) + this.sender.hashCode()) * 31) + this.side) * 31) + this.symbol.hashCode()) * 31) + this.timeInforce;
        }

        public String toString() {
            return "Message(id=" + this.f416id + ", orderType=" + this.orderType + ", price=" + this.price + ", quantity=" + this.quantity + ", sender=" + this.sender + ", side=" + this.side + ", symbol=" + this.symbol + ", timeInforce=" + this.timeInforce + ')';
        }

        public Message(String id, int i, long j, long j2, String sender, int i2, String symbol, int i3) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(sender, "sender");
            Intrinsics.checkNotNullParameter(symbol, "symbol");
            this.f416id = id;
            this.orderType = i;
            this.price = j;
            this.quantity = j2;
            this.sender = sender;
            this.side = i2;
            this.symbol = symbol;
            this.timeInforce = i3;
        }

        public final String getId() {
            return this.f416id;
        }

        public final int getOrderType() {
            return this.orderType;
        }

        public final long getPrice() {
            return this.price;
        }

        public final long getQuantity() {
            return this.quantity;
        }

        public final String getSender() {
            return this.sender;
        }

        public final int getSide() {
            return this.side;
        }

        public final String getSymbol() {
            return this.symbol;
        }

        public final int getTimeInforce() {
            return this.timeInforce;
        }
    }
}
