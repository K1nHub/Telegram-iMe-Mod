package com.trustwallet.walletconnect.models.binance;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WCBinanceTransferOrder.kt */
/* loaded from: classes4.dex */
public final class WCBinanceTransferOrder extends WCBinanceOrder<Message> {

    /* compiled from: WCBinanceTransferOrder.kt */
    /* loaded from: classes4.dex */
    public enum MessageKey {
        INPUTS("inputs"),
        OUTPUTS("outputs");
        
        private final String key;

        MessageKey(String str) {
            this.key = str;
        }

        public final String getKey() {
            return this.key;
        }
    }

    /* compiled from: WCBinanceTransferOrder.kt */
    /* loaded from: classes4.dex */
    public static final class Message {
        private final List<Object> inputs;
        private final List<Object> outputs;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Message) {
                Message message = (Message) obj;
                return Intrinsics.areEqual(this.inputs, message.inputs) && Intrinsics.areEqual(this.outputs, message.outputs);
            }
            return false;
        }

        public int hashCode() {
            return (this.inputs.hashCode() * 31) + this.outputs.hashCode();
        }

        public String toString() {
            return "Message(inputs=" + this.inputs + ", outputs=" + this.outputs + ')';
        }

        public Message(List<Object> inputs, List<Object> outputs) {
            Intrinsics.checkNotNullParameter(inputs, "inputs");
            Intrinsics.checkNotNullParameter(outputs, "outputs");
            this.inputs = inputs;
            this.outputs = outputs;
        }

        public final List<Object> getInputs() {
            return this.inputs;
        }

        public final List<Object> getOutputs() {
            return this.outputs;
        }
    }
}
