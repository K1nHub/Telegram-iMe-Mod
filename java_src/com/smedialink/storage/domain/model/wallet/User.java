package com.smedialink.storage.domain.model.wallet;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: User.kt */
/* loaded from: classes3.dex */
public final class User {

    /* renamed from: id */
    private final String f353id;

    public static /* synthetic */ User copy$default(User user, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = user.f353id;
        }
        return user.copy(str);
    }

    public final String component1() {
        return this.f353id;
    }

    public final User copy(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return new User(id);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof User) && Intrinsics.areEqual(this.f353id, ((User) obj).f353id);
    }

    public int hashCode() {
        return this.f353id.hashCode();
    }

    public String toString() {
        return "User(id=" + this.f353id + ')';
    }

    public User(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        this.f353id = id;
    }

    public final String getId() {
        return this.f353id;
    }
}
