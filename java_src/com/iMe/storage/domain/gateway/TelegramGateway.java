package com.iMe.storage.domain.gateway;

import java.io.File;
import java.util.ArrayList;
/* compiled from: TelegramGateway.kt */
/* loaded from: classes3.dex */
public interface TelegramGateway {
    ArrayList<CharSequence> cutInBlocks(CharSequence charSequence, int i);

    String getAppVersion();

    String getCurrentLanguage();

    String getDeviceId();

    File getFilesFixedDirectory();

    long getSelectedAccountId();

    int getSelectedAccountIndex();

    String getWalletRefreshToken();

    boolean hasUser(long j);

    void setAppVersionRequiredUpdate(String str);

    void setWalletRefreshToken(String str);
}
