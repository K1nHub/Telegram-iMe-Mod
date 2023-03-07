package com.smedialink.domain.contacts;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: ContactSelectAction.kt */
/* loaded from: classes3.dex */
public abstract class ContactSelectAction {
    public /* synthetic */ ContactSelectAction(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* compiled from: ContactSelectAction.kt */
    /* loaded from: classes3.dex */
    public static final class OpenActionMode extends ContactSelectAction {
        public static final OpenActionMode INSTANCE = new OpenActionMode();

        private OpenActionMode() {
            super(null);
        }
    }

    private ContactSelectAction() {
    }

    /* compiled from: ContactSelectAction.kt */
    /* loaded from: classes3.dex */
    public static final class CloseActionMode extends ContactSelectAction {
        public static final CloseActionMode INSTANCE = new CloseActionMode();

        private CloseActionMode() {
            super(null);
        }
    }

    /* compiled from: ContactSelectAction.kt */
    /* loaded from: classes3.dex */
    public static final class ClearSelectedContacts extends ContactSelectAction {
        public static final ClearSelectedContacts INSTANCE = new ClearSelectedContacts();

        private ClearSelectedContacts() {
            super(null);
        }
    }

    /* compiled from: ContactSelectAction.kt */
    /* loaded from: classes3.dex */
    public static final class ChangeSelectedQty extends ContactSelectAction {
        private final int newQty;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ChangeSelectedQty) && this.newQty == ((ChangeSelectedQty) obj).newQty;
        }

        public int hashCode() {
            return this.newQty;
        }

        public String toString() {
            return "ChangeSelectedQty(newQty=" + this.newQty + ')';
        }

        public ChangeSelectedQty(int i) {
            super(null);
            this.newQty = i;
        }

        public final int getNewQty() {
            return this.newQty;
        }
    }
}
