package com.iMe.mapper.transaction;

import com.iMe.model.wallet.transaction.TransactionItem;
import com.iMe.storage.domain.model.wallet.transaction.Transaction;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TransactionUiMapping.kt */
/* loaded from: classes3.dex */
public final class TransactionUiMappingKt {
    public static final TransactionItem mapToUI(Transaction transaction) {
        Intrinsics.checkNotNullParameter(transaction, "<this>");
        return new TransactionItem(transaction);
    }
}
