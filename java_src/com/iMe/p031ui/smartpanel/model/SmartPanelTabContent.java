package com.iMe.p031ui.smartpanel.model;
/* compiled from: SmartPanelTabContent.kt */
/* renamed from: com.iMe.ui.smartpanel.model.SmartPanelTabContent */
/* loaded from: classes6.dex */
public interface SmartPanelTabContent {
    Type getContentType();

    /* compiled from: SmartPanelTabContent.kt */
    /* renamed from: com.iMe.ui.smartpanel.model.SmartPanelTabContent$Type */
    /* loaded from: classes6.dex */
    public enum Type {
        NORMAL_BOT_ANSWER(1),
        ADVERT_BOT_ANSWER(2),
        NORMAL_BOT_LABEL(3),
        BOT_MEDIA_ANSWER(4);
        
        private final int value;

        Type(int i) {
            this.value = i;
        }

        public final int getValue() {
            return this.value;
        }
    }
}
