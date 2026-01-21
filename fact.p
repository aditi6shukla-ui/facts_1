import streamlit as st
import wikipediaapi

wiki = wikipediaapi.Wikipedia(language="en")

st.title("Universal Facts App")

word = st.text_input("Type any planet, animal, fruit, car brand, or country")

if word:
    page = wiki.page(word.strip())
    if page.exists():
        st.write(page.summary[:600])
