package com.smedialink.storage.data.network.model.request.crypto.simplex;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: GetBuyingCryptoQuoteRequestList.kt */
/* loaded from: classes3.dex */
public final class GetBuyingCryptoQuoteRequestList {
    private final List<GetBuyingCryptoQuoteRequest> input;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ GetBuyingCryptoQuoteRequestList copy$default(GetBuyingCryptoQuoteRequestList getBuyingCryptoQuoteRequestList, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = getBuyingCryptoQuoteRequestList.input;
        }
        return getBuyingCryptoQuoteRequestList.copy(list);
    }

    public final List<GetBuyingCryptoQuoteRequest> component1() {
        return this.input;
    }

    public final GetBuyingCryptoQuoteRequestList copy(List<GetBuyingCryptoQuoteRequest> input) {
        Intrinsics.checkNotNullParameter(input, "input");
        return new GetBuyingCryptoQuoteRequestList(input);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof GetBuyingCryptoQuoteRequestList) && Intrinsics.areEqual(this.input, ((GetBuyingCryptoQuoteRequestList) obj).input);
    }

    public int hashCode() {
        return this.input.hashCode();
    }

    public String toString() {
        return "GetBuyingCryptoQuoteRequestList(input=" + this.input + ')';
    }

    public GetBuyingCryptoQuoteRequestList(List<GetBuyingCryptoQuoteRequest> input) {
        Intrinsics.checkNotNullParameter(input, "input");
        this.input = input;
    }

    public final List<GetBuyingCryptoQuoteRequest> getInput() {
        return this.input;
    }
}
