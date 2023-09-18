package com.iMe.storage.domain.repository.crypto.permission;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.AccountInfo;
import com.iMe.storage.domain.model.crypto.CryptoWalletsInfo;
import com.iMe.storage.domain.model.crypto.permission.PermissionAction;
import io.reactivex.Observable;
import java.util.List;
/* compiled from: CryptoPermissionRepository.kt */
/* loaded from: classes4.dex */
public interface CryptoPermissionRepository {
    Observable<Result<AccountInfo>> getAccountInfo(String str);

    Observable<Result<CryptoWalletsInfo>> getPermissionSettings(boolean z);

    Observable<Result<Boolean>> managePermissionSettings(boolean z, List<Long> list);

    Observable<Result<String>> requestPermission(String str, PermissionAction permissionAction);
}
