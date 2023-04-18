package com.iMe.model.state;

import kotlin.jvm.internal.DefaultConstructorMarker;
import org.telegram.messenger.C3242R;
/* compiled from: GlobalState.kt */
/* loaded from: classes3.dex */
public abstract class GlobalState {
    private final int description;
    private final int icon;
    private final String state;
    private final int title;

    public /* synthetic */ GlobalState(String str, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i, i2, i3);
    }

    private GlobalState(String str, int i, int i2, int i3) {
        this.state = str;
        this.icon = i;
        this.title = i2;
        this.description = i3;
    }

    public String getState() {
        return this.state;
    }

    public int getIcon() {
        return this.icon;
    }

    public int getTitle() {
        return this.title;
    }

    public int getDescription() {
        return this.description;
    }

    /* compiled from: GlobalState.kt */
    /* loaded from: classes3.dex */
    public static final class Content extends GlobalState {
        public static final Content INSTANCE = new Content();

        private Content() {
            super("content_state", 0, 0, 0, null);
        }
    }

    /* compiled from: GlobalState.kt */
    /* loaded from: classes3.dex */
    public static final class NoInternet extends GlobalState {
        public static final NoInternet INSTANCE = new NoInternet();

        private NoInternet() {
            super("no_internet_state", C3242R.raw.fork_state_no_internet, C3242R.string.common_no_network_state_title, C3242R.string.common_no_network_state_description, null);
        }
    }

    /* compiled from: GlobalState.kt */
    /* loaded from: classes3.dex */
    public static final class Unexpected extends GlobalState {
        public static final Unexpected INSTANCE = new Unexpected();

        private Unexpected() {
            super("unexpected_error_state", C3242R.raw.fork_state_unexpected, C3242R.string.common_unexpected_state_title, C3242R.string.common_unexpected_state_description, null);
        }
    }

    /* compiled from: GlobalState.kt */
    /* loaded from: classes3.dex */
    public static final class Progress extends GlobalState {
        public static final Progress INSTANCE = new Progress();

        private Progress() {
            super("progress_state", C3242R.raw.fork_state_progress, C3242R.string.common_progress_state_title, C3242R.string.common_progress_state_description, null);
        }
    }

    /* compiled from: GlobalState.kt */
    /* loaded from: classes3.dex */
    public static abstract class Empty extends GlobalState {
        private final int description;
        private final int icon;
        private final String state;
        private final int title;

        public /* synthetic */ Empty(String str, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, i, i2, i3);
        }

        @Override // com.iMe.model.state.GlobalState
        public String getState() {
            return this.state;
        }

        @Override // com.iMe.model.state.GlobalState
        public int getIcon() {
            return this.icon;
        }

        @Override // com.iMe.model.state.GlobalState
        public int getTitle() {
            return this.title;
        }

        @Override // com.iMe.model.state.GlobalState
        public int getDescription() {
            return this.description;
        }

        private Empty(String str, int i, int i2, int i3) {
            super(str, i, i2, i3, null);
            this.state = str;
            this.icon = i;
            this.title = i2;
            this.description = i3;
        }

        /* compiled from: GlobalState.kt */
        /* loaded from: classes3.dex */
        public static final class Common extends Empty {
            public static final Common INSTANCE = new Common();

            private Common() {
                super("empty_content_state", C3242R.raw.fork_state_empty_common, C3242R.string.common_empty_state_title, C3242R.string.common_empty_state_description, null);
            }
        }

        /* compiled from: GlobalState.kt */
        /* loaded from: classes3.dex */
        public static final class Balance extends Empty {
            public static final Balance INSTANCE = new Balance();

            private Balance() {
                super("empty_balance_state", C3242R.raw.fork_state_empty_balance, C3242R.string.common_empty_state_title, C3242R.string.common_empty_balance_state_description, null);
            }
        }

        /* compiled from: GlobalState.kt */
        /* loaded from: classes3.dex */
        public static final class Staking extends Empty {
            public static final Staking INSTANCE = new Staking();

            private Staking() {
                super("empty_staking_state", C3242R.raw.fork_state_empty_balance, C3242R.string.common_empty_state_title, C3242R.string.staking_programmes_empty_state_description, null);
            }
        }

        /* compiled from: GlobalState.kt */
        /* loaded from: classes3.dex */
        public static final class Twitter extends Empty {
            public static final Twitter INSTANCE = new Twitter();

            private Twitter() {
                super("empty_twitter_state", C3242R.raw.fork_state_empty_common, C3242R.string.twitter_empty_state_title, C3242R.string.twitter_empty_state_subtitle, null);
            }
        }

        /* compiled from: GlobalState.kt */
        /* loaded from: classes3.dex */
        public static final class TwitterSearch extends Empty {
            public static final TwitterSearch INSTANCE = new TwitterSearch();

            private TwitterSearch() {
                super("empty_twitter_search_state", C3242R.raw.fork_state_empty_common, C3242R.string.twitter_search_title, C3242R.string.twitter_search_subtitle, null);
            }
        }
    }
}