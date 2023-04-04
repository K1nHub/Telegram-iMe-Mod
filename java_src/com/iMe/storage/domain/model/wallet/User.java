package com.iMe.storage.domain.model.wallet;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: User.kt */
/* loaded from: classes3.dex */
public final class User {

    /* renamed from: id */
    private final String f356id;

    public static /* synthetic */ User copy$default(User user, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = user.f356id;
        }
        return user.copy(str);
    }

    public final String component1() {
        return this.f356id;
    }

    public final User copy(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return new User(id);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof User) && Intrinsics.areEqual(this.f356id, ((User) obj).f356id);
    }

    public int hashCode() {
        return this.f356id.hashCode();
    }

    public String toString() {
        return "User(id=" + this.f356id + ')';
    }

    public User(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        this.f356id = id;
    }

    public final String getId() {
        return this.f356id;
    }
}
