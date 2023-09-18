package com.trustwallet.walletconnect.models.binance;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: WCBinanceCancelOrder.kt */
/* loaded from: classes6.dex */
public final class WCBinanceCancelOrder extends WCBinanceOrder<Message> {

    /* compiled from: WCBinanceCancelOrder.kt */
    /* loaded from: classes6.dex */
    public enum MessageKey {
        REFID("refid"),
        SENDER("sender"),
        SYMBOL("symbol");
        
        private final String key;

        MessageKey(String str) {
            this.key = str;
        }

        public final String getKey() {
            return this.key;
        }
    }

    /* compiled from: WCBinanceCancelOrder.kt */
    /* loaded from: classes6.dex */
    public static final class Message {
        private final String refid;
        private final String sender;
        private final String symbol;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Message) {
                Message message = (Message) obj;
                return Intrinsics.areEqual(this.refid, message.refid) && Intrinsics.areEqual(this.sender, message.sender) && Intrinsics.areEqual(this.symbol, message.symbol);
            }
            return false;
        }

        public int hashCode() {
            return (((this.refid.hashCode() * 31) + this.sender.hashCode()) * 31) + this.symbol.hashCode();
        }

        public String toString() {
            return "Message(refid=" + this.refid + ", sender=" + this.sender + ", symbol=" + this.symbol + ')';
        }

        public Message(String refid, String sender, String symbol) {
            Intrinsics.checkNotNullParameter(refid, "refid");
            Intrinsics.checkNotNullParameter(sender, "sender");
            Intrinsics.checkNotNullParameter(symbol, "symbol");
            this.refid = refid;
            this.sender = sender;
            this.symbol = symbol;
        }

        public final String getRefid() {
            return this.refid;
        }

        public final String getSender() {
            return this.sender;
        }

        public final String getSymbol() {
            return this.symbol;
        }
    }
}
