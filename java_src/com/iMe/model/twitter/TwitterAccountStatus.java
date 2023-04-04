package com.iMe.model.twitter;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TwitterAccountStatus.kt */
/* loaded from: classes3.dex */
public abstract class TwitterAccountStatus {
    public /* synthetic */ TwitterAccountStatus(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* compiled from: TwitterAccountStatus.kt */
    /* loaded from: classes3.dex */
    public static final class None extends TwitterAccountStatus {
        public static final None INSTANCE = new None();

        private None() {
            super(null);
        }
    }

    private TwitterAccountStatus() {
    }

    /* compiled from: TwitterAccountStatus.kt */
    /* loaded from: classes3.dex */
    public static final class Active extends TwitterAccountStatus {
        private final String nickname;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Active(String nickname) {
            super(null);
            Intrinsics.checkNotNullParameter(nickname, "nickname");
            this.nickname = nickname;
        }

        public final String getNickname() {
            return this.nickname;
        }
    }

    /* compiled from: TwitterAccountStatus.kt */
    /* loaded from: classes3.dex */
    public static final class Error extends TwitterAccountStatus {
        private final String nickname;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Error(String nickname) {
            super(null);
            Intrinsics.checkNotNullParameter(nickname, "nickname");
            this.nickname = nickname;
        }

        public final String getNickname() {
            return this.nickname;
        }
    }
}
