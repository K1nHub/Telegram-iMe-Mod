package com.iMe.feature.profile;

import com.iMe.storage.domain.gateway.TelegramGateway;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AccountInstance;
import org.telegram.tgnet.TLRPC$Chat;
/* compiled from: ProfileRepositoryImpl.kt */
/* loaded from: classes3.dex */
public final class ProfileRepositoryImpl implements ProfileRepository {
    private ProfileData currentProfile;
    private final TelegramGateway telegramGateway;

    public ProfileRepositoryImpl(TelegramGateway telegramGateway) {
        Intrinsics.checkNotNullParameter(telegramGateway, "telegramGateway");
        this.telegramGateway = telegramGateway;
        this.currentProfile = new ProfileData(0L, 0L, null, 7, null);
    }

    @Override // com.iMe.feature.profile.ProfileRepository
    public ProfileData getCurrentProfile() {
        return this.currentProfile;
    }

    @Override // com.iMe.feature.profile.ProfileRepository
    public void saveProfile(ProfileData profile) {
        Intrinsics.checkNotNullParameter(profile, "profile");
        this.currentProfile = profile;
    }

    @Override // com.iMe.feature.profile.ProfileRepository
    public boolean isMyProfile(ProfileData profile) {
        Intrinsics.checkNotNullParameter(profile, "profile");
        TLRPC$Chat chat = AccountInstance.getInstance(this.telegramGateway.getSelectedAccountIndex()).getMessagesController().getChat(Long.valueOf(profile.getChatId()));
        return this.telegramGateway.getSelectedAccountId() == profile.getUserId() || (chat != null ? chat.creator : false);
    }
}
