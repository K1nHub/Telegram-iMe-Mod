package com.smedialink.storage.domain.repository.crypto.airdrop;

import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.airdrop.AirdropInfo;
import com.smedialink.storage.domain.model.crypto.airdrop.AirdropVersion;
import io.reactivex.Observable;
/* compiled from: AirdropRepository.kt */
/* loaded from: classes3.dex */
public interface AirdropRepository {
    Observable<Result<AirdropInfo>> checkAirdropStart(String str, AirdropVersion airdropVersion);

    Observable<Result<Boolean>> getTokensByAirdrop(String str, AirdropVersion airdropVersion);

    Observable<Result<String>> registerInAirdrop(AirdropVersion airdropVersion);
}
