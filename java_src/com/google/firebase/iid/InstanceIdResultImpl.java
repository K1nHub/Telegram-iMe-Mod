package com.google.firebase.iid;
/* compiled from: com.google.firebase:firebase-iid@@21.1.0 */
/* loaded from: classes4.dex */
final class InstanceIdResultImpl implements InstanceIdResult {
    private final String token;

    /* JADX INFO: Access modifiers changed from: package-private */
    public InstanceIdResultImpl(String str, String str2) {
        this.token = str2;
    }

    @Override // com.google.firebase.iid.InstanceIdResult
    public String getToken() {
        return this.token;
    }
}
