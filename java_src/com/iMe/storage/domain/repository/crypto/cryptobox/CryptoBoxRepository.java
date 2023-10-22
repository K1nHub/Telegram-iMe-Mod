package com.iMe.storage.domain.repository.crypto.cryptobox;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxAction;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxCreationRules;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxInfo;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxOrderType;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxParticipationData;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxParticipationResult;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxTokenApprovalInfo;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxTransactionAction;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxTransactionArgs;
import io.reactivex.Observable;
import java.math.BigDecimal;
import java.util.List;
/* compiled from: CryptoBoxRepository.kt */
/* loaded from: classes3.dex */
public interface CryptoBoxRepository {
    Observable<Result<CryptoBoxTokenApprovalInfo>> getApprovalInfo(String str, String str2);

    Observable<Result<CryptoBoxTransactionAction>> getApprovalPrepareData(String str, String str2);

    Observable<Result<CryptoBoxTransactionAction>> getCreationPrepareData(String str, String str2, BigDecimal bigDecimal, int i);

    Observable<Result<CryptoBoxCreationRules>> getCreationRules(String str);

    Observable<Result<List<CryptoBoxAction>>> getCryptoBoxActions(String str);

    Observable<Result<CryptoBoxInfo>> getCryptoBoxInfo(String str);

    Observable<Result<List<CryptoBoxInfo>>> getCryptoBoxesList(Long l, String str, CryptoBoxOrderType cryptoBoxOrderType);

    Observable<Result<CryptoBoxParticipationData>> getParticipationData(String str);

    Observable<Result<CryptoBoxTransactionAction>> getSuspensionPrepareData(String str);

    Observable<Result<CryptoBoxParticipationResult>> participate(String str);

    Observable<Result<String>> sendApprovalExecute(CryptoBoxTransactionArgs cryptoBoxTransactionArgs);

    Observable<Result<String>> sendCreationExecute(long j, String str, CryptoBoxTransactionArgs cryptoBoxTransactionArgs);

    Observable<Result<Boolean>> sendMessageRefresh(String str);

    Observable<Result<String>> sendSuspensionExecute(CryptoBoxTransactionArgs cryptoBoxTransactionArgs);
}
