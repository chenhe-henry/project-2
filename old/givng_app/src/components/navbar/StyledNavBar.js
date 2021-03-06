import styled from 'styled-components';

export const StyledNav = styled.nav`
    background-color: #2B2D42;
    width: 100vw;
    float: right;
    height: 6.5vh;
    position: fixed;
`;

export const StyledNavLinks = styled.p`
    color: white;
    float: right;
    margin: 0 1vw;
    padding: 1rem;
    cursor: pointer;
    text-decoration: none;
    &:hover {
        background-color: #DFE3E8;
        color: black;
    }
`;

export const LogoImg = styled.img`
    padding: 0;
    margin-top: -1vh;
    width: 16vw;
    height: 15vh;
    position: fixed;
    cursor: pointer;
`