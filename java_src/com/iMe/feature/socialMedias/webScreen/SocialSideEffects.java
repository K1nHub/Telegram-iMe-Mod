package com.iMe.feature.socialMedias.webScreen;

import com.iMe.feature.socialMedias.SocialNetwork;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SocialSideEffects.kt */
/* loaded from: classes4.dex */
public abstract class SocialSideEffects {
    public /* synthetic */ SocialSideEffects(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* compiled from: SocialSideEffects.kt */
    /* loaded from: classes4.dex */
    public static final class ShowError extends SocialSideEffects {
        public static final ShowError INSTANCE = new ShowError();

        private ShowError() {
            super(null);
        }
    }

    private SocialSideEffects() {
    }

    /* compiled from: SocialSideEffects.kt */
    /* loaded from: classes4.dex */
    public static final class FinishAuth extends SocialSideEffects {
        public static final FinishAuth INSTANCE = new FinishAuth();

        private FinishAuth() {
            super(null);
        }
    }

    /* compiled from: SocialSideEffects.kt */
    /* loaded from: classes4.dex */
    public static final class RemoveCookies extends SocialSideEffects {
        public static final RemoveCookies INSTANCE = new RemoveCookies();

        private RemoveCookies() {
            super(null);
        }
    }

    /* compiled from: SocialSideEffects.kt */
    /* loaded from: classes4.dex */
    public static final class LoadUrl extends SocialSideEffects {
        private final String url;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof LoadUrl) && Intrinsics.areEqual(this.url, ((LoadUrl) obj).url);
        }

        public int hashCode() {
            return this.url.hashCode();
        }

        public String toString() {
            return "LoadUrl(url=" + this.url + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LoadUrl(String url) {
            super(null);
            Intrinsics.checkNotNullParameter(url, "url");
            this.url = url;
        }

        public final String getUrl() {
            return this.url;
        }
    }

    /* compiled from: SocialSideEffects.kt */
    /* loaded from: classes4.dex */
    public static final class OpenInApp extends SocialSideEffects {
        private final String url;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OpenInApp) && Intrinsics.areEqual(this.url, ((OpenInApp) obj).url);
        }

        public int hashCode() {
            return this.url.hashCode();
        }

        public String toString() {
            return "OpenInApp(url=" + this.url + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OpenInApp(String url) {
            super(null);
            Intrinsics.checkNotNullParameter(url, "url");
            this.url = url;
        }

        public final String getUrl() {
            return this.url;
        }
    }

    /* compiled from: SocialSideEffects.kt */
    /* loaded from: classes4.dex */
    public static final class ShowResetAlert extends SocialSideEffects {
        private final String networkName;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ShowResetAlert) && Intrinsics.areEqual(this.networkName, ((ShowResetAlert) obj).networkName);
        }

        public int hashCode() {
            return this.networkName.hashCode();
        }

        public String toString() {
            return "ShowResetAlert(networkName=" + this.networkName + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ShowResetAlert(String networkName) {
            super(null);
            Intrinsics.checkNotNullParameter(networkName, "networkName");
            this.networkName = networkName;
        }

        public final String getNetworkName() {
            return this.networkName;
        }
    }

    /* compiled from: SocialSideEffects.kt */
    /* loaded from: classes4.dex */
    public static final class ShowMenu extends SocialSideEffects {
        private final SocialNetwork socialNetwork;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ShowMenu) && Intrinsics.areEqual(this.socialNetwork, ((ShowMenu) obj).socialNetwork);
        }

        public int hashCode() {
            return this.socialNetwork.hashCode();
        }

        public String toString() {
            return "ShowMenu(socialNetwork=" + this.socialNetwork + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ShowMenu(SocialNetwork socialNetwork) {
            super(null);
            Intrinsics.checkNotNullParameter(socialNetwork, "socialNetwork");
            this.socialNetwork = socialNetwork;
        }

        public final SocialNetwork getSocialNetwork() {
            return this.socialNetwork;
        }
    }
}
