package com.iMe.gateway.impl;

import android.content.Context;
import com.iMe.fork.controller.ForkCommonController;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.model.telegram.TelegramLocaleInformation;
import com.iMe.utils.extentions.common.ContextExtKt;
import java.io.File;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.p048ui.Components.TranslateAlert2;
/* compiled from: TelegramGatewayImpl.kt */
/* loaded from: classes3.dex */
public final class TelegramGatewayImpl implements TelegramGateway {
    private final Context context;

    public TelegramGatewayImpl(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    @Override // com.iMe.storage.domain.gateway.TelegramGateway
    public String getAppVersion() {
        String BUILD_VERSION_STRING = BuildVars.BUILD_VERSION_STRING;
        Intrinsics.checkNotNullExpressionValue(BUILD_VERSION_STRING, "BUILD_VERSION_STRING");
        return BUILD_VERSION_STRING;
    }

    @Override // com.iMe.storage.domain.gateway.TelegramGateway
    public TelegramLocaleInformation getCurrentLocaleInformation() {
        LocaleController.LocaleInfo currentLocaleInfo = LocaleController.getInstance().getCurrentLocaleInfo();
        String langCode = currentLocaleInfo.getLangCode();
        Intrinsics.checkNotNullExpressionValue(langCode, "locale.langCode");
        String str = currentLocaleInfo.pluralLangCode;
        Intrinsics.checkNotNullExpressionValue(str, "locale.pluralLangCode");
        return new TelegramLocaleInformation(langCode, str, currentLocaleInfo.isUnofficial());
    }

    @Override // com.iMe.storage.domain.gateway.TelegramGateway
    public int getSelectedAccountIndex() {
        return UserConfig.selectedAccount;
    }

    @Override // com.iMe.storage.domain.gateway.TelegramGateway
    public long getSelectedAccountId() {
        return UserConfig.getInstance(UserConfig.selectedAccount).clientUserId;
    }

    @Override // com.iMe.storage.domain.gateway.TelegramGateway
    public String getDeviceId() {
        return ContextExtKt.getDeviceId(this.context);
    }

    @Override // com.iMe.storage.domain.gateway.TelegramGateway
    public File getFilesFixedDirectory() {
        File filesDirFixed = ApplicationLoader.getFilesDirFixed();
        Intrinsics.checkNotNullExpressionValue(filesDirFixed, "getFilesDirFixed()");
        return filesDirFixed;
    }

    @Override // com.iMe.storage.domain.gateway.TelegramGateway
    public String getWalletRefreshToken() {
        return ForkCommonController.Companion.getInstance(UserConfig.selectedAccount).getWalletRefreshToken();
    }

    @Override // com.iMe.storage.domain.gateway.TelegramGateway
    public void setWalletRefreshToken(String str) {
        ForkCommonController companion = ForkCommonController.Companion.getInstance(UserConfig.selectedAccount);
        companion.setWalletRefreshToken(str);
        companion.saveConfig();
    }

    @Override // com.iMe.storage.domain.gateway.TelegramGateway
    public void setAppVersionRequiredUpdate(String str) {
        ForkCommonController companion = ForkCommonController.Companion.getInstance(UserConfig.selectedAccount);
        companion.setAppVersionRequiredUpdate(str);
        companion.saveConfig();
    }

    @Override // com.iMe.storage.domain.gateway.TelegramGateway
    public boolean hasUser(long j) {
        return MessagesController.getInstance(UserConfig.selectedAccount).getUser(Long.valueOf(j)) != null;
    }

    @Override // com.iMe.storage.domain.gateway.TelegramGateway
    public ArrayList<CharSequence> cutInBlocks(CharSequence text, int i) {
        Intrinsics.checkNotNullParameter(text, "text");
        ArrayList<CharSequence> cutInBlocks = TranslateAlert2.cutInBlocks(text, i);
        Intrinsics.checkNotNullExpressionValue(cutInBlocks, "cutInBlocks(text, maxBlockSize)");
        return cutInBlocks;
    }
}
