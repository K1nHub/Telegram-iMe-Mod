package com.iMe.feature.socialMedias.auth;
/* compiled from: SocialAuthResultMapper.kt */
/* loaded from: classes4.dex */
enum SocialAuthStatus {
    FAIL("fail"),
    SUCCESS("success"),
    ACTIVE("ACTIVE"),
    VERIFICATION("VERIFICATION"),
    VALIDATION("VALIDATION");
    
    private final String status;

    SocialAuthStatus(String str) {
        this.status = str;
    }

    public final String getStatus() {
        return this.status;
    }
}
