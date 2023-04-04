package com.iMe.storage.domain.repository.crypto.permission;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.AccountInfo;
import com.iMe.storage.domain.model.crypto.CryptoWalletInfo;
import com.iMe.storage.domain.model.crypto.permission.PermissionAction;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import io.reactivex.Observable;
import java.util.List;
/* compiled from: CryptoPermissionRepository.kt */
/* loaded from: classes3.dex */
public interface CryptoPermissionRepository {
    Observable<Result<AccountInfo>> getAccountInfo(String str);

    Observable<Result<CryptoWalletInfo>> getPermissionSettings(boolean z);

    Observable<Result<Boolean>> managePermissionSettings(TokenCode tokenCode, boolean z, List<Long> list);

    Observable<Result<String>> requestPermission(String str, PermissionAction permissionAction);
}
